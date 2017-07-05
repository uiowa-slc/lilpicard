<?php

class RelatedWorksHolder extends SiteTree {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
		
	);
	
	public static $allowed_children = array("ArtworkImage", "ArtworkPiece");
										   
	
   function getCMSFields() {
	   $fields = parent::getCMSFields();
	   return $fields;
   }
	
}

class RelatedWorksHolder_Controller extends ContentController {
	
	public function init() {
		parent::init();
	}
	
	
}

?>