<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\CMS\Model\SiteTree;
 
class CategoryHolder extends SiteTree {
 
   // create a Title database field for Category
   private static $db = array(

   );

   
   
public function getCMSFields() {
   $fields = parent::getCMSFields();
   $fields->removeByName('Content');
 	    $catConfig = GridFieldConfig_RecordEditor::create();
      // Setup a table field to allow editing of categories within the system
      $categoryTable = new GridField('Categories', 'Category', Category::get());

      $categoryTable->setConfig($catConfig);
	
 
      // Set permissions of the table to add categories only. Deleting is disabled because
      // if you delete one currently in use, there is no functionality to ensure the related
      // data is deleted as well.
      //$categoryTable->setPermissions(array('add'));
 
      // Add the table field to the tab
      $fields->addFieldToTab('Root.Main', $categoryTable);
	
	  return $fields;
}

}

 
?>