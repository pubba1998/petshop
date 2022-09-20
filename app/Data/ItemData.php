<?php 

class ItemsData
{

  public function __construct(
     $Items_id,  $Items_name, $Items_quantity,  $Items_price, $animals_id
  ) {
    $this -> Items_id = $Items_id;
    $this -> Items_name = $Items_name;
    $this -> Items_quantity = $Items_quantity;
    $this -> Items_price = $Items_price;
    $this -> animals_id = $animals_id;
  }

  public $Items_id;
  public $Items_name;
  public $Items_quantity;
  public $Items_price;
  public $animals_id;

 
}

?>