<?php
$to = 'al222210730@gmail.com';
$subject = 'Prueba de Envío de Correo';
$message = 'Este es un mensaje de prueba enviado desde XAMPP.';
$headers = 'From: empleo.lerma@gmail.com' . "\r\n" .
           'Reply-To: empleo.lerma@gmail.com' . "\r\n" .
           'X-Mailer: PHP/' . phpversion();

if (mail($to, $subject, $message, $headers)) {
    echo 'Correo enviado exitosamente.';
} else {
    echo 'Error al enviar el correo.';
}
?>
