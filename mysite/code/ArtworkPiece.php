<?php

class ArtworkPiece extends SiteTree {
	
	public static $db = array(
		"Date" => "Text",
		"Featured" => "Boolean",
		"VideosOnly" => "Boolean",
		"Medium" => "Text",
		"Size" => "Text",
		"CatalogID" => "Text",
		"Photographer" => "Text",
		"Year" => "Int"
	);
	
	public static $has_one = array(
		"ThumbnailImage" => "Image"
	
	);
	
   static $field_types = array(
      'Title' => 'TextField'
   );
 
   static $field_names = array(
      'Title' => 'Title'
   );
	
   static $many_many = array(
      "Categories" => "Category",
	  "RelatedArtworkPieces" => "ArtworkPiece",
   );
   
   static $belongs_many_many = array(
	'RelatedArtworkPiece' => 'ArtworkPiece'								 
   );
   
   function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Title","Title");
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab("Root.Content.Main", new CheckboxField("Featured", "Featured?"));
		$fields->addFieldToTab("Root.Content.Main", new CheckboxField("VideosOnly", "Does this piece contain videos only?"));
		$fields->addFieldToTab("Root.Content.Main", new ImageField("ThumbnailImage", "Thumbnail Image"));
		$categoryList = DataObject::get('Category');
		$fields->addFieldToTab('Root.Content.Main', new CheckboxSetField('Categories', 'Category:', $categoryList));
		
		
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
		 $fields->addFieldToTab( 'Root.Content.Main', $modulesTablefield );
*/
		
		
		$fields->addFieldToTab("Root.Content.Main", new TextField("Date", "Date"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("Year", "Artwork Year (for sorting purposes)"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("Medium", "Short Description"));
		/*$fields->addFieldToTab("Root.Content.Main", new TextField("Size", "Size"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("CatalogID", "Catalog ID"));*/
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content", "Description"));

		// Setup a table field to allow editing of categories within the system
		$relatedPiecesList = DataObject::get('ArtworkPiece');
		$fields->addFieldToTab('Root.Content.RelatedPieces', new CheckboxSetField('RelatedArtworkPieces', '', $relatedPiecesList));
	   return $fields;
   }
	
}

class ArtworkPiece_Controller extends Page_Controller {
	
	public function init() {
		parent::init();

		if($this->VideosOnly){
			$firstVideo = DataObject::get_one("ArtworkVideo","ParentID = ".$this->ID);
			
			if ($firstVideo){
				echo $firstVideo->Title;
				Director::redirect($firstVideo->URLSegment."/");
			}else{
				echo "SDDSGGSD";
				Director::redirect("home/");
				
			}
		}
	}
	
	public function relatedPieces(){
		
		$relatedContainer = DataObject::get_one("RelatedWorksHolder", "ParentID =".$this->ID);
	
		if($relatedContainer){
			$set = DataObject::get("ArtworkImage", "ParentID = ".$relatedContainer->ID);
			return $set;	
		}else{
			return null;	
		}
	}
	
	public function carousels(){
		$set = DataObject::get("Carousel", "ParentID = ".$this->ID);
		
		return $set;
		
	}
	
	public function videos(){
		$set = DataObject::get("ArtworkVideo", "ParentID = ".$this->ID);
		
		return $set;
		
	}
	
	public function artworkImages($limit=0){
		
		$artworkImageContainer = DataObject::get_one("ArtworkImageHolder", "ParentID =".$this->ID." and Status = 'Published'");
	
		if($artworkImageContainer){
			$set = DataObject::get("ArtworkImage", "ParentID = ".$artworkImageContainer->ID,null,null,$limit);
			return $set;	
		}else{
			return null;	
		}
	}
	
	
}

?>