function Get-Exe {
  # Ruta del disco duro y de la otra unidad (CD)
  $discoDuro = "C:\"
  $otraUnidad = "D:\"

  # Ruta del archivo listado.txt
  $rutaArchivo = "C:\listado.txt"

  # Filtrar y obtener los archivos ejecutables (.exe) del disco duro y la otra unidad
  $archivosEjecutables = Get-ChildItem -Path $discoDuro,$otraUnidad -Recurse -Include "*.exe"

  # Guardar los resultados en el archivo listado.txt
  $archivosEjecutables | Out-File -FilePath $rutaArchivo
}

#Script by: INovomiast
