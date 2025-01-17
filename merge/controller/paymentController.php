<?php
session_start();
require_once ('../model/paymentModel.php');
require_once('../model/appointmentBookingModel.php');

$input = json_decode(file_get_contents('php://input'), true);

if($input)
{
    $name = $input['name'];
    $email = $input['email'];
    $cardholderName = $input['cardholderName'];
    $cardNumber = $input['cardNumber'];
    $paymentMethod = $input['paymentMethod'];
    $expiryMonth = $input['expiryMonth'];
    $expiryYear = $input['expiryYear'];
    $cvv = $input['cvv'];
    
    $payment = insertPayment($name, $email, $cardholderName, $cardNumber, $paymentMethod, $expiryMonth, $expiryYear, $cvv);
    if ($payment)
    {
        if(!empty($_SESSION['appointment_info']))
        {
            $appointmentInfo = $_SESSION['appointment_info'];

            $status = bookAppointment(
                $appointmentInfo['name'],
                $appointmentInfo['email'],
                $appointmentInfo['doctorID'],
                $appointmentInfo['date'],
                $appointmentInfo['problem'],
                $_SESSION['appointment_info']['token']
            );
            unset($_SESSION['appointment_info']);
        } 
        echo 'success';
    }

    else
    {
        echo 'payment unsuccessful';
    }
}