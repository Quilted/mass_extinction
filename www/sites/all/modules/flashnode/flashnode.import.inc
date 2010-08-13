<?php
// $Id: flashnode.import.inc,v 1.7 2008/03/06 21:25:06 stuartgreenfield Exp $


/**
 * Generate Flash import form
 * The returned form varies depending on the state. It presents either a list of files
 * available for import, or a confirmation form if some files have been selected for import
 */
function flashnode_import($form_state) {

  // If form was submitted and some files were checked, then return confirmation form
  if ($form_state['submitted'] && array_filter($form_state['values']['files'])) {
    return flashnode_import_confirm($form_state, array_filter($form_state['values']['files']));
  }

  // Otherwise retrieve the form showing a list of available files to import
  $form['flashnode_import'] = flashnode_import_form();

  // Return the form
  return $form;
}


/**
 * Form definition function to show list of files available for import
 */
function flashnode_import_form() {

  $form['help'] = array(
    '#value' => t('
      <p>This feature can be used to import files directly and create Flash nodes from them. This can be useful for importing batches of files that have been uploaded to the server, or to import files that are too large to be uploaded via the node creation form. Note that files that are imported do not respect file size limitations that would apply to files uploaded via the node form. Nodes that are created by this import function will @published.</p>
      <p>The import function will scan the %directory directory and sub-directories to locate files for import.</p>',
      array(
        '%directory' => base_path().file_create_path(variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH)),
        '@published' => variable_get('flashnode_default_import_status', FLASHNODE_DEFAULT_IMPORT_STATUS) ? t('be published') : t('not be published'),
      )),
  );

  // Get the list of files that aren't in the database
  $filesnotindb = _flashnode_filesnotindb();

  // Output count of files not in the database
  if ($filesnotindb) {
    $form['count'] = array(
      '#value' => format_plural(count($filesnotindb), '1 file found.', '@count files found.') . t(' Select the file(s) you want to import, then click \'Import checked files\'.'),
    );
  }
  else {
    $form['count'] = array(
      '#value' => t('No files were found for import.'),
    );
  }

  // Process each result in turn and build check box list
  $files=array();

  foreach ($filesnotindb as $file) {

    $files[$file] = '';

    // Can't use file_create_url as the links fail if the site uses private transfers so force a public url instead
    $form['file'][$file] = array('#value' => l(str_replace(file_create_path(variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH)).'/', '', $file), $GLOBALS['base_url'] .'/'. $file));
  }

  // Add list of files to checkboxes
  $form['files'] = array('#type' => 'checkboxes', '#options' => $files);

  // Submit button to process form
  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Import checked files'),
  );

  // Specify theme for form
  $form['#theme'] = 'flashnode_import_form';

  return $form;

}


/**
 * Return an array of files that are not currently in the {files} table
 */
function _flashnode_filesnotindb() {

  // Prepare array to hold results
  $filesnotindb = array();

  // Get all the files out the {files} table and store as qualified path
  $result = db_query('SELECT filepath FROM {files} ORDER BY filepath ASC');
  $filesindb = array();
  while ($file = db_fetch_object($result)) {
    $filesindb[] = file_create_path($file->filepath);
  }

  // Get all the files out of the directory structure
  $filesonserver = _flashnode_directorytoarray(realpath(file_create_path(variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH))), TRUE);

  // Sort the rows to make it easier to compare to file listing in FTP
  asort($filesonserver);

  // Get the root path - will need this later
  $root = realpath('.');

  // Process each result in turn
  foreach ($filesonserver as $file) {

    // Strip out the root path to leave just a drupal path
    $file = preg_replace('@'.preg_quote($root).'.@', '', $file);

    // Correct for Windows using \ in place of /
    $file = str_replace("\\", "/", $file);

    // Check it isn't a directory - not interested
    if (!file_check_directory($file)) {

      // Check to see if file is NOT in the database
      if (!in_array($file, $filesindb) ) {

        // If we get here we have a file that isn't in the database
        $filesnotindb[] = $file;
      }
    }
  }

  return $filesnotindb;
}


/**
 * Helper function - recurse directories and files in to an array
 * http://snippets.dzone.com/posts/show/155
 */
function _flashnode_directorytoarray($directory, $recursive) {
  $array_items = array();
  if ($handle = opendir($directory)) {
    while (false !== ($file = readdir($handle))) {
      if ($file != "." && $file != "..") {
        if (is_dir($directory. "/" . $file)) {
          if ($recursive) {
            $array_items = array_merge($array_items, _flashnode_directorytoarray($directory. "/" . $file, $recursive));
          }
          $file = $directory . "/" . $file;
          $array_items[] = preg_replace("/\/\//si", "/", $file);
        }
        else {
          $file = $directory . "/" . $file;
          $array_items[] = preg_replace("/\/\//si", "/", $file);
        }
      }
    }
    closedir($handle);
  }
  return $array_items;
}


/**
 * Theme flashnode_import_form
 */
function theme_flashnode_import_form($form) {

  // Render help message
  $output .= drupal_render($form['help']);

  // Render count
  $output .= drupal_render($form['count']);

  // If there are files found
  if (isset($form['file']) && is_array($form['file'])) {

    // Construct table of files
    $header = array(
      theme('table_select_header_cell'),
      t('File')
    );

    foreach (element_children($form['file']) as $key) {
      $row = array();
      $row[] = drupal_render($form['files'][$key]);
      $row[] = drupal_render($form['file'][$key]);
      $rows[] = $row;
    }

    // Render themed table
    $output .= theme('table', $header, $rows);

    // Render actions
    $output .= drupal_render($form['submit']);

  }

  // Return output
  return $output;
}


/**
 * Submit handler for flashnode_import_form - simply populates data before redisplaying form
 */
function flashnode_import_submit($form, &$form_state) {
  // Force rebuild to populate form data
  $form_state['rebuild'] = TRUE;
}


/**
 * Confirmation form for user to confirm import of selected items
 */
function flashnode_import_confirm(&$form_state, $files = array()) {

  $form['files'] = array('#prefix' => '<ul>', '#suffix' => '</ul>', '#tree' => TRUE);

  // array_filter in the call returned only elements with TRUE values
  foreach ($files as $file) {
    $form['files'][$file] = array('#type' => 'hidden', '#value' => $file, '#prefix' => '<li>', '#suffix' => check_plain(str_replace(file_create_path(variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH)).'/', '', $file)) ."</li>\n");
  }
  $form['operation'] = array('#type' => 'hidden', '#value' => 'import');
  $form['#submit'][] = 'flashnode_import_confirm_submit';

  return confirm_form(
    $form,
    t('Are you sure you want to import these items?'),
    'admin/content/flashnode',
    '',
    t('Import'),
    t('Cancel')
  );
}


/**
 * Submit handler for import confirmation
 * This function does the actual import of each selected file
 */
function flashnode_import_confirm_submit($form, &$form_state) {

  if ($form_state['values']['confirm']) {
    foreach ($form_state['values']['files'] as $file) {
      flashnode_import_file($file);
    }
  }
  $form_state['redirect'] = 'admin/content/node';
  return;
}


/**
 * Import function called by flashnode_import_confirm_submit
 * It is called once for each file that is to be imported
 * $file_to_import is a Drupal path to a file for import
 */
function flashnode_import_file($file_to_import) {

  // Need to access the user object
  global $user;

  // Initialise a node and file object
  $node = new stdClass();
  $file = new stdClass();

  // Populate basic data in to the node
  $node->title = check_plain(basename($file_to_import));
  $node->uid = $user->uid;
  $node->type = 'flashnode';

  // Get default node options for flashnode
  $node_options = variable_get('node_options_flashnode', array('status', 'promote'));

  // Process the array to add items to node
  foreach (array('promote', 'sticky', 'revision') as $key) {
    $node->$key = in_array($key, $node_options);
  }

  // Apply comment setting - use value 2 as default. Could refer to a constant but
  // if comment module not enabled then COMMENT_NODE_READ_WRITE is not defined
  $node->comment = variable_get('comment_flashnode', 2);

  // Assign publish status (over-ride node defaults with import default)
  $node->status = variable_get('flashnode_default_import_status', FLASHNODE_DEFAULT_IMPORT_STATUS);

  // Try to get the file settings for this file, using image_get_info
  $info = image_get_info(realpath($file_to_import));
  $node->flashnode['height'] = $info['height'];
  $node->flashnode['width'] = $info['width'];
  $file->filemime = $info['mime_type'];

  // Set other flash node defaults
  $node->flashnode['display'] = variable_get('flashnode_default_display', FLASHNODE_TEASER_AND_BODY);
  $node->flashnode['substitution'] = '!default';
  $node->flashnode['base'] = variable_get('flashnode_default_base', base_path().file_directory_path());

  // Set a flag to tell flashnode_insert we are adding files via import - currently suppresses file validation
  $node->flashnode['import'] = TRUE;

  // Prepare the file object
  $file->uid = $user->uid;
  $file->filename = basename($file_to_import);
  $file->filepath = $file_to_import;
  $file->status = FILE_STATUS_PERMANENT;
  $file->timestamp = time();
  $file->filesize = filesize(realpath($file_to_import));

  // If we didn't get mime type from earlier attempt we will need to try and guess it from the extension
  if (!$file->filemime) {
    if (preg_match('@swf|flv|mp3$@i', $file->filename, $matches)) {
      switch (strtolower($matches[0])) {
        case 'mp3':
          $file->filemime = 'audio/mpeg';
          break;
        case 'flv':
        default:
          $file->filemime = 'application/octet-stream';
      }
    }
  }

  // Write file to the database
  drupal_write_record('files', $file);

  // Add fid to the flashnode object
  $node->flashnode['fid'] = db_last_insert_id('files', 'fid');

  // Save the node
  node_save($node);

  // Show a status message
  // If successful, show message and write an entry to the watchdog
  // If unsuccessful only show on the screen

  // Reduce $file_to_import to simple name
  $file_to_import = str_replace(file_create_path(variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH)).'/', '', $file_to_import);

  // Show appropriate message - $node->nid only exists if node_save succeeded
  if ($node->nid) {
    drupal_set_message('Imported '.$file_to_import);
    $watchdog_args = array('@type' => $node->type, '%title' => $node->title);
    $node_link = l(t('view'), 'node/'. $node->nid);
    watchdog('content', '@type: imported %title.', $watchdog_args, WATCHDOG_NOTICE, $node_link);
  }
  else {
    drupal_set_message('Failed to import '.$file_to_import, 'warning');
  }

  return;

}
