<?php
include 'db_connection.php';

// Consulta SQL para seleccionar todos los registros de la tabla test_aptitud
$sql = "SELECT * FROM test_aptitud";
$result = $conn->query($sql);

// Verificar si hay resultados
if ($result->num_rows > 0) {
    // Mostrar los resultados
    while ($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"] . " - Habilidad: " . $row["habilidad_mas_destacada"] . "<br>";
    }
} else {
    echo "0 resultados";
}

// Cerrar la conexión
$conn->close();
?>
