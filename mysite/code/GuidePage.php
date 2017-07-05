<?php

class GuidePage extends SiteTree {
	
	public static $db = array(
		"Column1" => "HTMLText",
		"Column2" => "HTMLText",
		"Column3" => "HTMLText",
		"Column4" => "HTMLText",

	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->removeFieldFromTab("Root.Content.Main","Content");
	   
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column1", "Column 1"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column2", "Column 2"));
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
		return DataObject::get("GuidePage");
	}
	
	public function PrevNextPage($Mode = 'next') {
 
		if($Mode == 'next'){
			$Where = "ParentID = ($this->ParentID) AND Sort > ($this->Sort)";
			$Sort = "Sort ASC";
 		}
 		elseif($Mode == 'prev'){
 			$Where = "ParentID = ($this->ParentID) AND Sort < ($this->Sort)";
			$Sort = "Sort DESC";
 		}
 		else{
 			return false;
 		}
 
		return DataObject::get("SiteTree", $Where, $Sort, null, 1);
 	
  }
  
	public function NumberOfSiblings(){
		return DataObject::get("SiteTree","ParentID = ($this->ParentID)")->Count();
	}
	public function CurrentPageNumber(){
		return (DataObject::get("SiteTree","ParentID = ($this->ParentID) AND Sort <= ($this->Sort)")->Count());
}
	
	
}


?>