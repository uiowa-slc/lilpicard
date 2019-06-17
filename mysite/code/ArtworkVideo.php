<?php

use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Model\SiteTree;

class ArtworkVideo extends Page {
	
	private static $db = array(
	
	
	);
	
	private static $has_one = array(
		"Video" => File::class,
		"Image" => Image::class,
	
	);
	
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Title","Title");
	   $fields->removeFieldFromTab("Root.Main","Content");
	   $fields->addFieldToTab('Root.Main', new UploadField('Video','Video FLV file',null,null,null,'assets/Uploads/flv/'));
	   $fields->addFieldToTab('Root.Main', new UploadField(Image::class,'Thumbnail Image'));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));
	   

	   return $fields;
   }
	
}

?>