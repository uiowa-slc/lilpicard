<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Model\SiteTree;

class ArtworkImage extends SiteTree {
	
	private static $db = array(
	
	
	);
	
	private static $has_one = array(
		"Image" => Image::class
	
	);
	
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Main","Content");
	   $fields->addFieldToTab("Root.Main", new UploadField(Image::class, Image::class));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));
	   return $fields;
   }
	
}



?>