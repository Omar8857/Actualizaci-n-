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
$habilidad_mas_destacada = $_POST['habilidad_mas_destacada'];
$motivacion_trabajo = $_POST['motivacion_trabajo'];
$manejo_estres = $_POST['manejo_estres'];
$mayor_logro_profesional = $_POST['mayor_logro_profesional'];
$trabajo_equipo = $_POST['trabajo_equipo'];
$habilidades_mejorar = $_POST['habilidades_mejorar'];
$nombre = $_POST['nombre'];

// Preparar la consulta SQL para insertar los datos
$sql = "INSERT INTO respues_aptitud (habilidad_mas_destacada, motivacion_trabajo, manejo_estres, mayor_logro_profesional, trabajo_equipo, habilidades_mejorar, nombre) 
VALUES (?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssssss", $habilidad_mas_destacada, $motivacion_trabajo, $manejo_estres, $mayor_logro_profesional, $trabajo_equipo, $habilidades_mejorar, $nombre);

if ($stmt->execute()) {
    // Redirigir a la página del formulario con un parámetro de éxito
    header("Location: http://192.168.137.1/Pagina_web/test_personalidad.htm");
    exit();
} else {
    // Redirigir a la página del formulario con un parámetro de error
    header("Location: http://192.168.137.1/Pagina_web/test_personalidad.htm");
    exit();
}

// Cerrar la conexión
$stmt->close();
$conn->close();
?>