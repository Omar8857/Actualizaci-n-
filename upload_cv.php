<?php
// Configuración del directorio donde se guardarán los archivos PDF
$targetDir = "uploads/";
$targetFile = $targetDir . basename($_FILES["pdfUploader"]["name"]);
$uploadOk = 1;
$fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

// Verificar si el archivo es un PDF
if($fileType != "pdf") {
    $errorMessage = "Lo siento, solo se permiten archivos PDF.";
    header("Location: error.htm?error=" . urlencode($errorMessage));
    exit();
}

// Verificar si $uploadOk es 0 por algún error
if ($uploadOk == 0) {
    $errorMessage = "Tu archivo no fue subido.";
    header("Location: error.html?error=" . urlencode($errorMessage));
    exit();
// Si todo está bien, intentar subir el archivo
} else {
    if (move_uploaded_file($_FILES["pdfUploader"]["tmp_name"], $targetFile)) {
        // Redirigir a la página de confirmación
        header("Location: confirmation.htm");
        exit();
    } else {
        $errorMessage = "Lo siento, hubo un error al subir tu archivo.";
        header("Location: error.html?error=" . urlencode($errorMessage));
        exit();
    }
}
?>

