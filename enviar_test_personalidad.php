<?php
// Configuración de conexión a la base de datos
$servername = "localhost";
$username = "root"; // Usuario por defecto en XAMPP
$password = "";     // Contraseña por defecto en XAMPP
$dbname = "formulario";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Recoger los datos del formulario
$pregunta1 = $_POST['pregunta1'];
$pregunta2 = $_POST['pregunta2'];
$pregunta3 = $_POST['pregunta3'];
$pregunta4 = $_POST['pregunta4'];
$pregunta5 = $_POST['pregunta5'];
$pregunta6 = $_POST['pregunta6'];
$nombre = $_POST['nombre'];

// Preparar la consulta SQL para insertar los datos
$sql = "INSERT INTO respuestas_personalidad (pregunta1, pregunta2, pregunta3, pregunta4, pregunta5, pregunta6, nombre) 
VALUES (?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssssss", $pregunta1, $pregunta2, $pregunta3, $pregunta4, $pregunta5, $pregunta6, $nombre);

if ($stmt->execute()) {
    // Redirigir a la página del formulario con un parámetro de éxito
    header("Location: http://localhost/Pagina_web/test_personalidad.htm?status=success");
    exit();
} else {
    // Redirigir a la página del formulario con un parámetro de error
    header("Location: http://localhost/Pagina_web/test_personalidad.htm?status=error");
    exit();
}

// Cerrar la conexión
$stmt->close();
$conn->close();
?>
