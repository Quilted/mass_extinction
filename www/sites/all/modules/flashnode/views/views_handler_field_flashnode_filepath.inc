<?php
// $Id: views_handler_field_flashnode_filepath.inc,v 1.1 2008/10/27 23:45:54 stuartgreenfield Exp $

class views_handler_field_flashnode_filepath extends views_handler_field {
  function render($values) {
    return check_plain($values->{$this->field_alias});
  }
}
