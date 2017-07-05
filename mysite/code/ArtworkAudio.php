<?php

class ArtworkAudio extends ArtworkVideo {
	
	public static $db = array(
	
	
	);
	
	public static $has_one = array(

	
	);
	
   
   function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Video","Audio File");

	   return $fields;
   }
	
}

class ArtworkAudio_Controller extends ArtworkVideo_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>