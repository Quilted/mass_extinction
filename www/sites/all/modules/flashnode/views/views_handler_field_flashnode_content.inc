<?php
// $Id: views_handler_field_flashnode_content.inc,v 1.1 2008/10/27 23:45:54 stuartgreenfield Exp $

class views_handler_field_flashnode_content extends views_handler_field {

  // We don't want to add anything to the query, so use a blank query handler
  function query() {
  }


  // Define options field for the form
  function options_form(&$form, &$form_state) {
    parent::options_form($form, $form_state);
    $form['options'] = array(
      '#type' => 'textfield',
      '#title' => t('Options'),
      '#description' => t('Optional parameters to pass to the flash content, as a string, using flash node input filter syntax.'),
      '#default_value' => $this->options['options'],
    );
  }


  // Define the render function for flash node content
  function render($values) {

    // If options passed then turn options string in to an array
    $options = array();
    if ($this->options['options']) {
      $options = array_map('trim', explode('|', $this->options['options']));
    }

    // Initialise data array with the nid
    $data = array('nid' => $values->nid);

    // Add on any options
    foreach($options as $option) {
      $pos = strpos($option, '=');
      $data_name = substr($option, 0, $pos);
      $data_value = substr($option, $pos + 1);
      $data[$data_name] = $data_value;
    }

    // Return content
    return flashnode_content($data);
  }
}
