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



?>