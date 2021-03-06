<?php

require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Hakee tilaukset jaoteltuna tilauksittain näkyviin front-puolelle. (Ylläpitäjänä haluan nähdä asiakkaan tilaamat tuotteet.)
try {
    $db = openDB();
    selectAsJson($db, 'SELECT customer.id, customer.firstname, customer.lastname, product.id, product.name, product.image, product.price, order_row.order_id
    FROM customer, product, order_row, `order`
    WHERE product.id = order_row.product_id and customer.id = `order`.`customer_id` and `order`.id = order_row.order_id
    GROUP BY `order`.id
    ORDER BY product.name ASC ;');
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
