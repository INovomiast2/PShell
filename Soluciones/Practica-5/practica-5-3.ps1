function Get-Sys32 {
  # Obtener los archivos ejecutables en C:\Windows\System32
  $directorio = "C:\Windows\System32"
  $filtro = "*.exe", "*.com", "*.bat"
  $archivos = Get-ChildItem -Path $directorio -Filter $filtro

  # Mostrar los archivos en forma de lista con nombre, tamaño, extensión y si es de solo lectura
  foreach ($archivo in $archivos) {
    $nombre = $archivo.Name
    $tamaño = $archivo.Length
    $extensión = $archivo.Extension
    $esSoloLectura = $archivo.IsReadOnly

    Write-Host "Nombre: $nombre"
    Write-Host "Tamaño: $tamaño bytes"
    Write-Host "Extensión: $extensión"
    Write-Host "Es de solo lectura: $esSoloLectura"
    Write-Host
  }

}
