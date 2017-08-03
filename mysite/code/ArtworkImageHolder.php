<?php

class ArtworkImageHolder extends SiteTree {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
		"Image" => "Image"
		
	);
	


   private static $many_many = array(
     
   );
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   	   $fields->addFieldToTab("Root.Main", new UploadField("Image", "Thumbnail Image"));
	   return $fields;
   }
	
}

class ArtworkImageHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
	public function carousels(){
		$set = Carousel::get()->filter(array("ParentID" => $this->ParentID));
		return $set;
		
	}
	
	
}

?>