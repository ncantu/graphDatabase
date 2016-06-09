<?php

class Template {

	use TMerge;
	
	CONST DIR                  = '../conf/template/';
	CONST EXT                  = '.html';
	CONST TAG_PREFFIX          = '{';
	CONST TAG_SUFFIX           = '}';
	CONST FILTER_SUFFIX        = 'Filter';
	CONST SELECTED_SUFFIX      = 'Selected';
	CONST LIST_SUFFIX          = 'List';
	CONST LIST_HTML_GET_SUFFIX = 'ListHtmlGet';
	CONST SELECTED_HTML        = ' selected="selected" selected ';
	CONST OPTION_ALL_HTML      = '<option id="all" name="all" value="all">all</option>';
	CONST OPTION_NONE_HTML     = '<option id="none" name="none" value="none">none</option>';
}

?>