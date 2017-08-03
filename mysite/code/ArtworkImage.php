<?php

class ArtworkImage extends SiteTree {
	
	private static $db = array(
	
	
	);
	
	private static $has_one = array(
		"Image" => "Image"
	
	);
	
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Main","Content");
	   $fields->addFieldToTab("Root.Main", new UploadField("Image", "Image"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));
	   return $fields;
   }
	
}

class ArtworkImage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>