<?php
 
class Category extends DataObject {
 
   // create a Title database field for Category
   static $db = array(
      'Title' => 'Varchar'
   );
 
   // Used for TableField. These are the field types.
   // Refer to getCMSFields() on ArticleHolder for how it is used.
   static $field_types = array(
      'Title' => 'TextField'
   );
 
   // Used for TableField. These are the field names.
   // Refer to getCMSFields() on ArticleHolder for how it is used.
   static $field_names = array(
      'Title' => 'Category Name'
   );
 
   // Defines the join in the referenced class as $belongs_many_many.
   // a new table, (this-class)_(relationship-name), will be created with a pair of ID fields.
   static $belongs_many_many = array(
	'ArtworkPiece' => 'ArtworkPiece'
									 
   );
   
   
   

 
}

 
?>