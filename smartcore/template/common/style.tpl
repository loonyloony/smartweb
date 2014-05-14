<?php
    header('Content-type: text/css');
    ob_start("compress");
    function compress($buffer) {
    /* remove comments */
    $buffer = preg_replace('!/\*[^*]*\*+([^/][^*]*\*+)*/!', '', $buffer);
    /* remove tabs, spaces, newlines, etc. */
    $buffer = str_replace(array("\r\n", "\r", "\n", "\t", '  ', '    ', '    '), '', $buffer);
    return $buffer;
    }
    
    foreach($css_styles as $style) {
    	include(DIR_CSS.$style);
   	}
    
  	ob_end_flush();
?>