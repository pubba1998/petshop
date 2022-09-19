<?php 

class CustomerData
{

  public function __construct(
     $customers_id,  $customers_name, $customers_email, $customers_phone
  ) {
    $this -> customers_id = $customers_id;
    $this -> customers_name = $customers_name;
    $this -> customers_email = $customers_email;
    $this -> customers_phone = $customers_phone;
  }

  public $customers_id;
  public $customers_name;
  public $customers_email;
  public $customers_phone;
}

?>