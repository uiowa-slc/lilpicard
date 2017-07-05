<?php

class ArtworkVideo extends SiteTree {
	
	public static $db = array(
	
	
	);
	
	public static $has_one = array(
		"Video" => "File",
		"Image" => "Image",
	
	);
	
   
   function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Content.Main","Content");
	   $fields->addFieldToTab('Root.Content.Main', new FileIFrameField('Video','Video FLV file',null,null,null,'assets/Uploads/flv/'));
	   $fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Thumbnail Image'));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content", "Description"));
	   

	   return $fields;
   }
	
}

class ArtworkVideo_Controller extends Carousel_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>