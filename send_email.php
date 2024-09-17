<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

$mail = new PHPMailer(true);
try {
    // Configuración del servidor SMTP
    $mail->isSMTP();
    $mail->Host       = 'smtp.mailtrap.io';
    $mail->SMTPAuth   = true;
    $mail->Username   = '75b8d1b479e8fe';
    $mail->Password   = 'b821f8f843ae6c';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;

    // Remitente y destinatario
    $mail->setFrom('empleo.lerma@gmail.com', 'Subdireccion de Promocion del Empleo');
    $mail->addAddress('omarmendezrs45@gmail.com', 'Omar Mendez'); // Dirección del destinatario
    // Configuración de caracteres y codificación
    $mail->CharSet = 'UTF-8'; // Establece la codificación de caracteres
    $mail->Encoding = 'base64'; // Codificación del contenido del correo

    // Contenido del correo
    $mail->isHTML(true); // Indica que el correo es HTML
    $mail->Subject = 'Invitación al Evento Especial';
    $mail->Body    = '
    <html>
    <head>
        <meta charset="UTF-8">
        <style>
            .event-section { max-width: 600px; margin: 0 auto; padding: 20px; font-family: Arial, sans-serif; }
            .event-header { background-color: #f8f9fa; padding: 10px; text-align: center; border-bottom: 1px solid #dee2e6; }
            .event-content { padding: 20px; }
            .event-footer { background-color: #f8f9fa; padding: 10px; text-align: center; border-top: 1px solid #dee2e6; }
            .event-button { display: inline-block; padding: 10px 20px; color: #fff; background-color: #007bff; text-decoration: none; border-radius: 5px; }
            .event-button:hover { background-color: #0056b3; }
        </style>
    </head>
    <body>
        <section class="event-section">
        <div class="event-header">
            <h3>¡Evento Especial!</h3>
        </div>
        <div class="event-content">
            <h2>Estimado [Omar Méndez],</h2>
            <p>Nos complace invitarte a nuestro próximo evento:</p>
            <p><strong>Cuarta Jornada Del Empleo:</strong> Tu oportunidad se viene</p>
            <p><strong>Fecha:</strong> 15 de Septiembre de 2024</p>
            <p><strong>Hora:</strong> 09:00 AM - 3:00 PM</p>
            <p><strong>Ubicación:</strong> Mercado Municipal, Lerma de Villada</p>
            <p>¡Esperamos verte allí para compartir un día lleno de oportunidades!</p>
             <a href="https://forms.gle/KAgsi4qB2mLgao2A7" class="event-button">Confirmar Asistencia</a>
        </div>
        <div class="event-footer">
            <p>Si tienes alguna pregunta, no dudes en contactarnos en <a href="https://mail.google.com/mail/u/0/?ogbl#inbox">empleo.lerma@gmail.com</a>.</p>
        </div>
    </section>
    </body>
    </html>';

    // Enviar el correo
    $mail->send();
    echo 'El correo ha sido enviado.';
} catch (Exception $e) {
    echo "El correo no pudo ser enviado. Mailer Error: {$mail->ErrorInfo}";
}
?>
