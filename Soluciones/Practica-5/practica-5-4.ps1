function Get-EXE-DLL-INI {
  # Obtener los archivos con las extensiones .exe, .dll o .ini en C:\Archivos de programa y subdirectorios
  $directorio = "C:\Archivos de programa"
  $filtro = "*.exe", "*.dll", "*.ini"
  $archivos = Get-ChildItem -Path $directorio -Filter $filtro -Recurse

  # Agrupar los archivos por extensión
  $grupos = $archivos | Group-Object -Property Extension

  # Mostrar los archivos agrupados por extensión en forma de lista
  foreach ($grupo in $grupos) {
    $extension = $grupo.Name
    $archivosGrupo = $grupo.Group

    Write-Host "Extensión: $extension"
    foreach ($archivo in $archivosGrupo) {
        $nombre = $archivo.Name
        $ruta = $archivo.FullName
        $tamaño = $archivo.Length
        $esSoloLectura = $archivo.IsReadOnly

        Write-Host "  Nombre: $nombre"
        Write-Host "  Ruta: $ruta"
        Write-Host "  Tamaño: $tamaño bytes"
        Write-Host "  Es de solo lectura: $esSoloLectura"
        Write-Host
    }
  }  
}
