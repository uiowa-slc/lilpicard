<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\CMS\Model\SiteTree;


class ArtworkImageHolder extends SiteTree {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
		"Image" => Image::class
		
	);
	


   private static $many_many = array(
     
   );
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   	   $fields->addFieldToTab("Root.Main", new UploadField(Image::class, "Thumbnail Image"));
	   return $fields;
   }
	
}


?>