<?php

class ArtworkAudio extends ArtworkVideo {
	
	private static $db = array(
	
	
	);
	
	private static $has_one = array(

	
	);
	
   
   public function getCMSFields() {
	   $fields = parent::getCMSFields();
	   $fields->renameField("Video","Audio File");

	   return $fields;
   }
	
}


?>