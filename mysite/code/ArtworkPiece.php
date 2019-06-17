<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Model\SiteTree;


class ArtworkPiece extends SiteTree {
	
	private static $db = array(
		"Date" => "Text",
		"Featured" => "Boolean",
		"VideosOnly" => "Boolean",
		"Medium" => "Text",
		"Size" => "Text",
		"CatalogID" => "Text",
		"Photographer" => "Text",
		"Year" => "Int"
	);
	
	private static $has_one = array(
		"ThumbnailImage" => Image::class
	
	);
	
   private static $field_types = array(
      'Title' => TextField::class
   );
 
   private static $field_names = array(
      'Title' => 'Title'
   );
	
   private static $many_many = array(
      "Categories" => "Category",
	  "RelatedArtworkPieces" => "ArtworkPiece",
   );
   
   private static $belongs_many_many = array(
	'RelatedArtworkPiece' => 'ArtworkPiece'								 
   );
   
   public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Title","Title");
		$fields->removeFieldFromTab("Root.Main","Content");
		$fields->addFieldToTab("Root.Main", new CheckboxField("Featured", "Featured?"));
		$fields->addFieldToTab("Root.Main", new CheckboxField("VideosOnly", "Does this piece contain videos only?"));
		$fields->addFieldToTab("Root.Main", new UploadField("ThumbnailImage", "Thumbnail Image"));
		$categoryList = Category::get();
		$fields->addFieldToTab('Root.Main', new CheckboxSetField('Categories', 'Category:', $categoryList));
		
		
		/*$relatedWorksTablefield = new ManyManyComplexTableField(
         $this,
         'RelatedArtworkPieces',
         'RelatedArtworkPieces',
         array(
	    'MenuTitle' => 'MenuTitle'
         ),
         'getCMSFields_forPopup'
      );
      $modulesTablefield->setAddTitle( 'A Module' );
		 $fields->addFieldToTab( 'Root.Main', $modulesTablefield );
*/
		
		
		$fields->addFieldToTab("Root.Main", new TextField(DBDate::class, DBDate::class));
		$fields->addFieldToTab("Root.Main", new TextField("Year", "Artwork Year (for sorting purposes)"));
		$fields->addFieldToTab("Root.Main", new TextField("Medium", "Short Description"));
		/*$fields->addFieldToTab("Root.Main", new TextField("Size", "Size"));
		$fields->addFieldToTab("Root.Main", new TextField("CatalogID", "Catalog ID"));*/
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));

		// Setup a table field to allow editing of categories within the system
		$relatedPiecesList = ArtworkPiece::get();
		$fields->addFieldToTab('Root.RelatedPieces', new CheckboxSetField('RelatedArtworkPieces', '', $relatedPiecesList));
	   return $fields;
   }
	
}

