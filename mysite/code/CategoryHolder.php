<?php
 
class CategoryHolder extends SiteTree {
 
   // create a Title database field for Category
   private static $db = array(

   );

   
   
public function getCMSFields() {
   $fields = parent::getCMSFields();
 	
	$fields->removeFieldFromTab("Root.Content","Main");
	$fields->removeFieldFromTab("Root.Content","Metadata");
 	$fields->addFieldToTab("Root.ManageCategories", new TextField("Title", "Title"));
 
 	 
      // Setup a table field to allow editing of categories within the system
      $categoryTable = new GridField('Categories', 'Category', Category::$field_names, Category::$field_types);
	
 
      // Set permissions of the table to add categories only. Deleting is disabled because
      // if you delete one currently in use, there is no functionality to ensure the related
      // data is deleted as well.
      //$categoryTable->setPermissions(array('add'));
 
      // Add the table field to the tab
      $fields->addFieldToTab('Root.ManageCategories', $categoryTable);
	
	  return $fields;
}

}

 
?>