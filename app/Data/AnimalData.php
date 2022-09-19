<?php 

class AnimalData
{

  public function __construct(
     $animals_id,  $animals_name
  ) {
    $this -> animals_id = $animals_id;
    $this -> animals_name = $animals_name;
  }

  public $animals_id;
  public $animals_name;
}

?>