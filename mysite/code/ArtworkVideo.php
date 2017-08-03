<?php

class ArtworkVideo extends SiteTree {
	
	private static $db = array(
	
	
	);
	
	private static $has_one = array(
		"Video" => "File",
		"Image" => "Image",
	
	);
	
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Main","Content");
	   $fields->addFieldToTab('Root.Main', new UploadField('Video','Video FLV file',null,null,null,'assets/Uploads/flv/'));
	   $fields->addFieldToTab('Root.Main', new UploadField('Image','Thumbnail Image'));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));
	   

	   return $fields;
   }
	
}

class ArtworkVideo_Controller extends Carousel_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>