<?php

class Carousel extends ArtworkImageHolder {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
								   
		
	);
	
	public static $allowed_children = array("ArtworkPiece", "ArtworkImage");
										   
	
   function getCMSFields() {
	   $fields = parent::getCMSFields();

	   return $fields;
   }
	
}

class Carousel_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
		public function carousels(){
		$set = DataObject::get("Carousel", "ParentID = ".$this->getParent()->ID);
		
		return $set;
		
	}
	
	public function videos(){
		$set = DataObject::get("ArtworkVideo", "ParentID = ".$this->getParent()->ID);
		return $set;
		
	}

	
}

?>