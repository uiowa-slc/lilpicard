<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePageClickable extends Page {
	
	private static $db = array(
		"IntroText" => "HTMLText",
		"Column1" => "HTMLText",
		"Column2" => "HTMLText",
		"ThanksBox" => "HTMLText"
	);
	
	private static $has_one = array(
	);
	
	public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->removeFieldFromTab("Root.Main","Content");
	   
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("IntroText", "Top Text"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column1", "Left Column"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("Column2", "Right Column"));
	   $fields->addFieldToTab("Root.Main", new HTMLEditorField("ThanksBox", "Thanks Box"));



return $fields;
   }
	
}



?>