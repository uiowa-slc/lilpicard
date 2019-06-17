<?php

class CommentsPageController extends PageController {
	
	public function init() {
		parent::init();
	}
	
	public function ThanksMessage(){
	
	if((isset($_GET['thanks'])) && ($_GET['thanks'] == 1) ){
	
		return "<p id=\"thanks-message\" class = \"typography\">Thank you for sharing your memories of Lil Picard. All submissions are
reviewed by a UIMA curator and you may be contacted for further
information.</p>";
		
	}
	
	else{
		
	}
	
	
	}
}