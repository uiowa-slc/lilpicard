<?php

class ArtworkImage extends SiteTree {
	
	public static $db = array(
	
	
	);
	
	public static $has_one = array(
		"Image" => "Image"
	
	);
	
   
   function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Content.Main","Content");
	   	   $fields->addFieldToTab("Root.Content.Main", new ImageField("Image", "Image"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content", "Description"));
	   return $fields;
   }
	
}

class ArtworkImage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>