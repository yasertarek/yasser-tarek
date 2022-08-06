<?php

namespace App\Database\Models;
use App\Database\Models\Model;

class Order_product extends Model {
    const TABLE = "order_product";

    public function mostSold ($num = 5) {
        return $this->con->query("SELECT * FROM `order_product` GROUP BY `product_id` ORDER BY `quantity` DESC LIMIT {$num}");
    }
}