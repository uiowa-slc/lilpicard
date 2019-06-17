<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Controllers\ContentController;

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


?>