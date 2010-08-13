<?php

/**
 * Implementation of hook_strongarm().
 */
function flash_strongarm() {
  $export = array();
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_base';
  $strongarm->value = '';

  $export['flashnode_default_base'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_display';
  $strongarm->value = '2';

  $export['flashnode_default_display'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_extensions';
  $strongarm->value = 'swf flv mp3';

  $export['flashnode_default_extensions'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_html_alt';
  $strongarm->value = 'You are missing some Flash content that should appear here! Perhaps your browser cannot display it, or maybe it did not initialise correctly.';

  $export['flashnode_default_html_alt'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_import_status';
  $strongarm->value = '0';

  $export['flashnode_default_import_status'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_default_path';
  $strongarm->value = 'flash';

  $export['flashnode_default_path'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_max_height';
  $strongarm->value = '0';

  $export['flashnode_max_height'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_max_teaser_height';
  $strongarm->value = '0';

  $export['flashnode_max_teaser_height'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_max_teaser_width';
  $strongarm->value = '0';

  $export['flashnode_max_teaser_width'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_max_width';
  $strongarm->value = '0';

  $export['flashnode_max_width'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_teaser_scale';
  $strongarm->value = '1';

  $export['flashnode_teaser_scale'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_updated';
  $strongarm->value = 1281735612;

  $export['flashnode_updated'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'flashnode_weight';
  $strongarm->value = '-0.1';

  $export['flashnode_weight'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'node_options_flashnode';
  $strongarm->value = array(
    0 => 'status',
    1 => 'promote',
  );

  $export['node_options_flashnode'] = $strongarm;
  return $export;
}
