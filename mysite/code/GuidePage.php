<?php

class GuidePage extends SiteTree {
	
	private static $db = array(
		"Column1" => "HTMLText",
		"Column2" => "HTMLText",
		"Column3" => "HTMLText",
		"Column4" => "HTMLText",

	);
	
	private static $has_one = array(
	);
	
	function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->removeFieldFromTab("Root.Main","Content");
	   
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column1", "Column 1"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column2", "Column 2"));
	   /*$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column3", "Column 3"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column4", "Column 4"));*/




return $fields;
   }
	
}

class GuidePage_Controller extends Page_Controller {
	
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
		return DataObject::get("SiteTree","ParentID = ($this->ParentID) AND Sort <= ($this->Sort)")->Count();
	}
	
	
}


?>