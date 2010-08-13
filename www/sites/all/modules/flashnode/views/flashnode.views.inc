<?php
// $Id: flashnode.views.inc,v 1.2 2008/11/11 23:29:37 stuartgreenfield Exp $

/**
 * Return data defining the flash node content field
 */
function flashnode_views_data() {

  // Define data to allow access to the flash node content
  $data['flashnode']['table']['group']  = t('Flash node');

  $data['flashnode']['table']['join']['node'] = array(
    'left_field' => 'vid',
    'field' => 'vid',
  );

  $data['flashnode']['content'] = array(
    'field' => array(
      'title' => t('Content'),
      'help' => t('The flash node content of the node.'),
      'handler' => 'views_handler_field_flashnode_content',
    ),
  );

  // Define data to allow access to the file path
  $data['flashnode_file']['table']['group']  = t('Flash node');

  $data['flashnode_file']['table']['join']['node'] = array(
    'left_table' => 'flashnode',
    'left_field' => 'fid',
    'field' => 'fid',
    'table' => 'files',
  );

  $data['flashnode_file']['filepath'] = array(
    'title' => t('Path'),
    'help' => t('The filepath of the flash node file.'),
    'field' => array(
      'handler' => 'views_handler_field_flashnode_filepath',
      'click sortable' => TRUE,
     ),
    'sort' => array(
      'handler' => 'views_handler_sort',
    ),
    'filter' => array(
      'handler' => 'views_handler_filter_string',
    ),
  );

  return $data;
}


/**
 * Register flash node content handler with Views
 */
function flashnode_views_handlers() {
  return array(
    'info' => array(
      'path' => drupal_get_path('module', 'flashnode') . '/views',
    ),
    'handlers' => array(
      'views_handler_field_flashnode_content' => array(
        'parent' => 'views_handler_field',
      ),
      'views_handler_field_flashnode_filepath' => array(
        'parent' => 'views_handler_field',
      ),
    ),
  );
}