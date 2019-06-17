<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\DataObject;


class GuidePage extends SiteTree {
	
	private static $db = array(
		"Column1" => "HTMLText",
		"Column2" => "HTMLText",
		"Column3" => "HTMLText",
		"Column4" => "HTMLText",

	);
	
	private static $has_one = array(
	);
	
	function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->removeFieldFromTab("Root.Main","Content");
	   
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column1", "Column 1"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column2", "Column 2"));
	   /*$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column3", "Column 3"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column4", "Column 4"));*/




return $fields;
   }
	
}