<?php 

class ItemsData
{

  public function __construct(
     $delivery_id,  $order_id, $delivery_address
  ) {
    $this -> delivery_id = $delivery_id;
    $this -> order_id = $order_id;
    $this -> delivery_address = $delivery_address;
    
  }

  public $delivery_id;
  public $order_id;
  public $delivery_address;
 
}

?>