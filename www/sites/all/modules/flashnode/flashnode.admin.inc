<?php
// $Id: flashnode.admin.inc,v 1.9 2008/08/17 22:30:15 stuartgreenfield Exp $

/**
 * @file
 * Callback for settings page
 */
function flashnode_admin_settings() {

  // Check for flash directory and create if necessary
  _flashnode_check_settings();

  // Reset the cache to ensure any pages using filters are updated
  // Necessary to ensure macro content regenerated in case the user modifies max_height or max_width settings
  cache_clear_all('*', 'cache_filter', TRUE);

  $form['flashnode_updated'] = array(
    '#type' => 'hidden',
    '#value' => time(),
  );

  $form['display_settings'] = array(
    '#type' => 'fieldset',
    '#title' => t('Display settings'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $form['display_settings']['flashnode_default_display'] = array(
    '#type' => 'radios',
    '#title' => t('Default display setting'),
    '#default_value' => variable_get('flashnode_default_display', FLASHNODE_TEASER_AND_BODY),
    '#description' => t('The default display setting that will be used when a new flash node is created.'),
    '#options' => array(
      FLASHNODE_TEASER_AND_BODY => t('Teaser and body'),
      FLASHNODE_TEASER_ONLY => t('Teaser only'),
      FLASHNODE_BODY_ONLY => t('Body only'),
      FLASHNODE_DO_NOT_DISPLAY => t('Do not display'),
    ),
  );

  $form['display_settings']['flashnode_max_width'] = array(
    '#type' => 'textfield',
    '#title' => t('Maximum displayed width'),
    '#default_value' => variable_get('flashnode_max_width', 0),
    '#description' => t('The maximum displayed width of a flash movie can be limited by entering a non-zero value here. If the movie width is greater than this width then the movie will be scaled down when it is displayed. A value of zero means that no scaling will occur. This setting can be useful to ensure that the page layout is not disrupted by a large flash movie.'),
  );

  $form['display_settings']['flashnode_max_height'] = array(
    '#type' => 'textfield',
    '#title' => t('Maximum displayed height'),
    '#default_value' => variable_get('flashnode_max_height', 0),
    '#description' => t('The maximum displayed height of a flash movie can be limited by entering a non-zero value here. If the movie height is greater than this height then the movie will be scaled down when it is displayed. A value of zero means that no scaling will occur. This setting can be useful to ensure that the page layout is not disrupted by a large flash movie.'),
  );

  $form['display_settings']['flashnode_teaser_scale'] = array(
    '#type' => 'textfield',
    '#title' => t('Scale factor to apply to teasers'),
    '#default_value' => variable_get('flashnode_teaser_scale', 1),
    '#description' => t('Use this setting to specify a scale factor to apply to flash content when it is displayed in teaser view. For example, enter <em>0.25</em> to display teaser content at 25% of its normal size.'),
  );

  $form['display_settings']['flashnode_max_teaser_width'] = array(
    '#type' => 'textfield',
    '#title' => t('Maximum displayed width for teasers'),
    '#default_value' => variable_get('flashnode_max_teaser_width', 0),
    '#description' => t('The maximum displayed width of a flash movie when in the teaser view can be limited by entering a non-zero value here. The teaser scaling factor defined above will be applied first, but if the resulting movie width is greater than this width then the movie will be scaled down further when it is displayed. A value of zero means that no additional scaling will occur. This setting can be useful to ensure that the page layout is not disrupted by a large flash movie.'),
  );

  $form['display_settings']['flashnode_max_teaser_height'] = array(
    '#type' => 'textfield',
    '#title' => t('Maximum displayed height for teasers'),
    '#default_value' => variable_get('flashnode_max_teaser_height', 0),
    '#description' => t('The maximum displayed height of a flash movie when in the teaser view can be limited by entering a non-zero value here. The teaser scaling factor defined above will be applied first, but if the resulting movie height is greater than this height then the movie will be scaled down further when it is displayed. A value of zero means that no additional scaling will occur. This setting can be useful to ensure that the page layout is not disrupted by a large flash movie.'),
  );

  $form['display_settings']['flashnode_weight'] = array(
    '#type' => 'textfield',
    '#title' => t('Weight of Flash content'),
    '#default_value' => variable_get('flashnode_weight', FLASHNODE_DEFAULT_WEIGHT),
    '#description' => t('Adjusting the weight of the Flash content will control where it appears relative to other parts of the node, such as the body. A negative value means it will float, a positive value means it will sink.'),
  );

  $form['general_settings'] = array(
    '#type' => 'fieldset',
    '#title' => t('General settings'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $form['general_settings']['flashnode_default_html_alt'] = array(
    '#type' => 'textarea',
    '#rows' => 5,
    '#title' => t('Default substitution content'),
    '#default_value' => variable_get('flashnode_default_html_alt', FLASHNODE_DEFAULT_HTML_ALT),
    '#description' => t('If you are using a javascript method to embed flash then this is the content that users will see if they are unable to, or choose not to, display the flash content. Use this content in a node by entering %default in the substitution field when creating a flash node. Note that this content is NOT filtered when it is displayed in a node so you may use mark-up that would not otherwise be allowed.', array('%default' => '!default')),
  );

  $form['general_settings']['flashnode_default_base'] = array(
    '#type' => 'textfield',
    '#title' => t('Default base parameter'),
    '#default_value' => variable_get('flashnode_default_base', ''),
    '#description' => t('If you use the ActionScript command %loadmovie then the <code>base</code> setting tells the Flash player where to find supporting movies that are not identified with a fully qualified file path. If you leave this setting blank then flash node will generate a default setting of %base that points to the file directory. This setting can be over-ridden in any node when the node is created.', array('%base' => file_create_url(''))),
  );

  $form['general_settings']['flashnode_default_import_status'] = array(
    '#type' => 'radios',
    '#title' => t('Publish status for imported nodes'),
    '#default_value' => variable_get('flashnode_default_import_status', FLASHNODE_DEFAULT_IMPORT_STATUS),
    '#description' => t('Specifies whether nodes created by import are published or not when they are created.'),
    '#options' => array(
      0 => t('Not published'),
      1 => t('Published'),
    ),
  );

  $form['file_settings'] = array(
    '#type' => 'fieldset',
    '#title' => t('File settings'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $form['file_settings']['flashnode_default_path'] = array(
    '#type' => 'textfield',
    '#title' => t('Default flash path'),
    '#default_value' => variable_get('flashnode_default_path', FLASHNODE_DEFAULT_PATH),
    '#description' => t('Subdirectory in the directory "%dir" where Flash files will be stored. Do not include a leading or trailing slash.', array('%dir' => variable_get('file_directory_path', 'files'))),
  );

  // Set some default options for files
  $flashnode_default_extensions = variable_get('flashnode_default_extensions', FLASHNODE_DEFAULT_EXTENSIONS);
  $upload_uploadsize_default = variable_get('upload_uploadsize_default', 1);
  $upload_usersize_default = variable_get('upload_usersize_default', 1);

  $form['file_settings']['flashnode_default_extensions'] = array(
    '#type' => 'textfield',
    '#title' => t('Default permitted file extensions'),
    '#default_value' => $flashnode_default_extensions,
    '#maxlength' => 255,
    '#description' => t('Default extensions that users can upload. Separate extensions with a space and do not include the leading dot.'),
  );

  $form['file_settings']['upload_uploadsize_default'] = array(
    '#type' => 'textfield',
    '#title' => t('Default maximum file size per upload'),
    '#default_value' => $upload_uploadsize_default,
    '#size' => 5,
    '#maxlength' => 5,
    '#description' => t('The default maximum file size a user can upload. This setting is shared with the upload module.'),
    '#field_suffix' => t('MB'),
  );

  $form['file_settings']['upload_usersize_default'] = array(
    '#type' => 'textfield',
    '#title' => t('Default total file size per user'),
    '#default_value' => $upload_usersize_default,
    '#size' => 5,
    '#maxlength' => 5,
    '#description' => t('The default maximum size of all files a user can have on the site. This setting is shared with the upload module.'),
    '#field_suffix' => t('MB'),
  );

  $form['file_settings']['upload_max_size'] = array('#value' => '<p>'. t('Your PHP settings limit the maximum file size per upload to %size.', array('%size' => format_size(file_upload_max_size()))) .'</p>');

  // Retrieve array of roles who can create flash nodes
  $roles = user_roles(0, 'create flash nodes');
  $form['roles'] = array('#type' => 'value', '#value' => $roles);

  foreach ($roles as $rid => $role) {
    $form['settings_role_'. $rid] = array(
      '#type' => 'fieldset',
      '#title' => t('Settings for @role', array('@role' => $role)),
      '#collapsible' => TRUE,
      '#collapsed' => TRUE,
    );

    $form['settings_role_'. $rid]['flashnode_extensions_'. $rid] = array(
      '#type' => 'textfield',
      '#title' => t('Permitted file extensions'),
      '#default_value' => variable_get('flashnode_extensions_'. $rid, $flashnode_default_extensions),
      '#maxlength' => 255,
      '#description' => t('Extensions that users in this role can upload. Separate extensions with a space and do not include the leading dot.'),
    );

    $form['settings_role_'. $rid]['upload_uploadsize_'. $rid] = array(
      '#type' => 'textfield',
      '#title' => t('Maximum file size per upload'),
      '#default_value' => variable_get('upload_uploadsize_'. $rid, $upload_uploadsize_default),
      '#size' => 5,
      '#maxlength' => 5,
      '#description' => t('The maximum size of a file a user can upload. This setting is shared with the upload module.'),
      '#field_suffix' => t('MB'),
    );

    $form['settings_role_'. $rid]['upload_usersize_'. $rid] = array(
      '#type' => 'textfield',
      '#title' => t('Total file size per user'),
      '#default_value' => variable_get('upload_usersize_'. $rid, $upload_usersize_default),
      '#size' => 5,
      '#maxlength' => 5,
      '#description' => t('The maximum size of all files a user can have on the site. This setting is shared with the upload module.'),
      '#field_suffix' => t('MB'),
    );

  }

  $form['#validate'] = array('flashnode_admin_settings_validate');

  return system_settings_form($form);
}


/**
 * Validate flashnode_admin_settings to ensure that flashnode_max_width and
 * flashnode_max_height are valid (numeric and zero or positive)
 */
function flashnode_admin_settings_validate($form, &$form_state) {

  // Check max width - must be numeric and not negative
  if (!is_numeric($form_state['values']['flashnode_max_width']) || $form_state['values']['flashnode_max_width'] < 0) {
    form_set_error('flashnode_max_width', t('The maximum displayed width must be zero or a positive number.'));
  }

  // Check max height - must be numeric and not negative
  if (!is_numeric($form_state['values']['flashnode_max_height']) || $form_state['values']['flashnode_max_height'] < 0) {
    form_set_error('flashnode_max_height', t('The maximum displayed height must be zero or a positive number.'));
  }

  // Check teaser scale - must be numeric and not negative
  if (!is_numeric($form_state['values']['flashnode_teaser_scale']) || $form_state['values']['flashnode_teaser_scale'] < 0) {
    form_set_error('flashnode_teaser_scale', t('The teaser scaling factor must be zero or a positive number.'));
  }

  // Check max teaser width - must be numeric and not negative
  if (!is_numeric($form_state['values']['flashnode_max_teaser_width']) || $form_state['values']['flashnode_max_teaser_width'] < 0) {
    form_set_error('flashnode_max_teaser_width', t('The maximum displayed teaser width must be zero or a positive number.'));
  }

  // Check max teaser height - must be numeric and not negative
  if (!is_numeric($form_state['values']['flashnode_max_teaser_height']) || $form_state['values']['flashnode_max_teaser_height'] < 0) {
    form_set_error('flashnode_max_teaser_height', t('The maximum displayed teaser height must be zero or a positive number.'));
  }


  // Check weight - must be numeric
  if (!is_numeric($form_state['values']['flashnode_weight'])) {
    form_set_error('flashnode_weight', t('The weight must be number.'));
  }

  // Check upload size settings
  $default_uploadsize = $form_state['values']['upload_uploadsize_default'];
  $default_usersize = $form_state['values']['upload_usersize_default'];

  $exceed_max_msg = t('Your PHP settings limit the maximum file size per upload to %size.', array('%size' => format_size(file_upload_max_size()))) .'<br/>';
  $more_info = t("Depending on your server environment, these settings may be changed in the system-wide php.ini file, a php.ini file in your Drupal root directory, in your Drupal site's settings.php file, or in the .htaccess file in your Drupal root directory.");

  if (!is_numeric($default_uploadsize) || ($default_uploadsize <= 0)) {
    form_set_error('upload_uploadsize_default', t('The %role file size limit must be a number and greater than zero.', array('%role' => t('default'))));
  }
  if (!is_numeric($default_usersize) || ($default_usersize <= 0)) {
    form_set_error('upload_usersize_default', t('The %role file size limit must be a number and greater than zero.', array('%role' => t('default'))));
  }
  if ($default_uploadsize * 1024 * 1024 > file_upload_max_size()) {
    form_set_error('upload_uploadsize_default', $exceed_max_msg . $more_info);
    $more_info = '';
  }
  if ($default_uploadsize > $default_usersize) {
    form_set_error('upload_uploadsize_default', t('The %role maximum file size per upload is greater than the total file size allowed per user', array('%role' => t('default'))));
  }

  foreach ($form_state['values']['roles'] as $rid => $role) {
    $uploadsize = $form_state['values']['upload_uploadsize_'. $rid];
    $usersize = $form_state['values']['upload_usersize_'. $rid];

    if (!is_numeric($uploadsize) || ($uploadsize <= 0)) {
      form_set_error('upload_uploadsize_'. $rid, t('The %role file size limit must be a number and greater than zero.', array('%role' => $role)));
    }
    if (!is_numeric($usersize) || ($usersize <= 0)) {
      form_set_error('upload_usersize_'. $rid, t('The %role file size limit must be a number and greater than zero.', array('%role' => $role)));
    }
    if ($uploadsize * 1024 * 1024 > file_upload_max_size()) {
      form_set_error('upload_uploadsize_'. $rid, $exceed_max_msg . $more_info);
      $more_info = '';
    }
    if ($uploadsize > $usersize) {
      form_set_error('upload_uploadsize_'. $rid, t('The %role maximum file size per upload is greater than the total file size allowed per user', array('%role' => $role)));
    }
  }
}
