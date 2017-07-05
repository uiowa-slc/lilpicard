<?php

class ArtworkImageHolder extends SiteTree {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
		"Image" => "Image"
		
	);
	
   static $many_many = array(
     
   );
   
   function getCMSFields() {
	   $fields = parent::getCMSFields();
	   	   $fields->addFieldToTab("Root.Content.Main", new ImageField("Image", "Thumbnail Image"));
	   return $fields;
   }
	
}

class ArtworkImageHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
	public function carousels(){
		$set = DataObject::get("Carousel", "ParentID = ".$this->getParent()->ID);
		return $set;
		
	}
	
	
}

?>