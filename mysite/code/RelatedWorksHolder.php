<?php

class RelatedWorksHolder extends SiteTree {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
		
	);
	
	private static $allowed_children = array("ArtworkImage", "ArtworkPiece");
										   
	
   public function getCMSFields() {
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