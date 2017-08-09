<?php
 
class Category extends DataObject {
 
   // create a Title database field for Category
   private static $db = array(
      'Title' => 'Varchar'
   );
 
   // Used for TableField. These are the field types.
   // Refer to getCMSFields() on ArticleHolder for how it is used.
   private static $field_types = array(
      'Title' => 'TextField'
   );
 
   // Used for TableField. These are the field names.
   // Refer to getCMSFields() on ArticleHolder for how it is used.
   private static $field_names = array(
      'Title' => 'Category Name'
   );
 
   // Defines the join in the referenced class as $belongs_many_many.
   // a new table, (this-class)_(relationship-name), will be created with a pair of ID fields.
   private static $belongs_many_many = array(
	'ArtworkPiece' => 'ArtworkPiece'
									 
   );
   
   public function getCMSFields(){
      $fields = FieldList::create();

      $fields->push(TextField::create('Title'));

      $gridFieldConfig = GridFieldConfig_RelationEditor::create();

      $gridField = GridField::create('ArtworkPiece', 'Artwork associated with this category', $this->ArtworkPiece());
      $gridField->setConfig($gridFieldConfig);

      $fields->push($gridField);

      return $fields;
   }
   

 
}

 
?>