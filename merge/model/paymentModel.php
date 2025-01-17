<?php

function insertPayment($name, $email, $cardholderName, $cardNumber, $paymentMethod, $expiryMonth, $expiryYear, $cvv) {
    $conn = getConnection();

    $sql = "INSERT INTO payment (user_email, payment_method, name, cardholder_name, card_number, expiry_month, expiry_year, cvv)
            VALUES ('{$email}', '{$paymentMethod}', '{$name}', '{$cardholderName}', '{$cardNumber}', '{$expiryMonth}', '{$expiryYear}', '{$cvv}')";

    $result = mysqli_query($conn, $sql);
    return $result;
}
?>
