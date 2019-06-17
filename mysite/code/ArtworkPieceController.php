<?php


class ArtworkPieceController extends PageController {
	
	public function init() {
		parent::init();

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