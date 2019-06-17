<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\DataObject;
class GuidePageController extends PageController {
	
	public function init() {
		parent::init();
	}
	
	public function guidePages(){
		return GuidePage::get();
	}
	
	public function PrevNextPage($Mode) {
 
		if($Mode == 'next'){
			$page = SiteTree::get()->filter(array(
				'ParentID' => $this->ParentID,
				'Sort:GreaterThan' => $this->Sort,
			))->First();

 		}
 		elseif($Mode == 'prev'){
 			$page = SiteTree::get()->filter(array(
				'ParentID' => $this->ParentID,
				'Sort:LessThan' => $this->Sort,
			))->Last();
 		}
 		else{
 			return false;
 		}
 
		return $page;
 	
  	}
  
	public function NumberOfSiblings(){
		return SiteTree::get()->filter(array("ParentID" => $this->ParentID))->Count();
	}
	public function CurrentPageNumber(){
		return DataObject::get(SiteTree::class,"ParentID = ($this->ParentID) AND Sort <= ($this->Sort)")->Count();
	}
	
	
}
