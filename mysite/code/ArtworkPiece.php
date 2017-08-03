<?php

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
		"ThumbnailImage" => "Image"
	
	);
	
   private static $field_types = array(
      'Title' => 'TextField'
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
		
		
		$fields->addFieldToTab("Root.Main", new TextField("Date", "Date"));
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

class ArtworkPiece_Controller extends Page_Controller {
	
	public function init() {
		parent::init();

		if($this->VideosOnly){
			$firstVideo = ArtworkVideo::get()->filter(array("ParentID" => $this->ID))->First();
			
			if ($firstVideo){
				// echo $firstVideo->Title;
				Director::redirect($firstVideo->URLSegment."/");
			}else{
				// echo "SDDSGGSD";
				Director::redirect("home/");
				
			}
		}
	}
	
	public function relatedPieces(){
		
		$relatedContainer = RelatedWorksHolder::get()->filter(array("ParentID" => $this->ID))->First();
	
		if($relatedContainer){
			$set = ArtworkImage::get()->filter(array("ParentID" => $relatedContainer->ID));
			return $set;	
		}else{
			return null;	
		}
	}
	
	public function carousels(){
		$set = Carousel::get()->filter(array("ParentID" => $this->ID));
		
		return $set;
		
	}
	
	public function videos(){
		$set = ArtworkVideo::get()->filter(array("ParentID" => $this->ID));
		
		return $set;
		
	}
	
	public function artworkImages($limit=0){
		
		$artworkImageContainer = ArtworkImageHolder::get()->filter(array("ParentID" => $this->ID))->First();
	
		if($artworkImageContainer){
			$set = ArtworkImage::get()->filter(array("ParentID" => $artworkImageContainer->ID))->limit($limit);
			return $set;	
		}else{
			return null;	
		}
	}
	
	
}

?>