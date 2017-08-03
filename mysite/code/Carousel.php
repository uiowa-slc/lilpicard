<?php

class Carousel extends ArtworkImageHolder {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
								   
		
	);
	
	private static $allowed_children = array("ArtworkPiece", "ArtworkImage");
										   
	
   public function getCMSFields() {
	   $fields = parent::getCMSFields();

	   return $fields;
   }
	
}

class Carousel_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
		public function carousels(){
		$set = Carousel::get()->filter(array("ParentID" => $this->ParentID));
		
		return $set;
		
	}
	
	public function videos(){
		$set = ArtworkVideo::get()->filter(array("ParentID" => $this->ParentID));
		return $set;
		
	}

	
}

?>