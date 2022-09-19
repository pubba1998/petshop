
<?php 

class OrderData
{

  public function __construct(
  $order_id, $customers_id, $items_id
  ) {
    $this -> order_id = $order_id;
    $this -> customers_id = $customers_id;
    $this -> items_id = $items_id;
    
  }

 
  public $order_id;
  public $customers_id;
  public $items_id;
 
}

?>
