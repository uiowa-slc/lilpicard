<?php

class HomePageClickable extends Page {
	
	public static $db = array(
		"IntroText" => "HTMLText",
		"Column1" => "HTMLText",
		"Column2" => "HTMLText",
		"ThanksBox" => "HTMLText"
	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->removeFieldFromTab("Root.Content.Main","Content");
	   
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("IntroText", "Top Text"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column1", "Left Column"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Column2", "Right Column"));
	   $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("ThanksBox", "Thanks Box"));



return $fields;
   }
	
}

class HomePageClickable_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}


?>