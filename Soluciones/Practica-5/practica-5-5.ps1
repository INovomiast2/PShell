function Fancy-Get {
  # Obtener los archivos de C:\Windows que empiecen por A o E
  $directorio = "C:\Windows"
  $filtro = "A*", "E*"
  $archivos = Get-ChildItem -Path $directorio -Filter $filtro -Recurse | Where-Object { -not $_.PSIsContainer }

  # Dividir los archivos en grupos de 4 elementos
  $grupos = $archivos | Group-Object -Property { $_.Name -replace '\..*' }

  # Mostrar los nombres de los archivos en 4 columnas
  $columnas = 4
  $contador = 0

  foreach ($grupo in $grupos) {
    $nombreArchivo = $grupo.Name

    # Mostrar el nombre del archivo en la columna actual
    Write-Host -NoNewline "$nombreArchivo"

    # Incrementar el contador y comprobar si se alcanzó el número de columnas
    $contador++
    if ($contador -eq $columnas) {
        $contador = 0
        Write-Host
    } else {
        Write-Host -NoNewline "`t"
    }
  }

  # Comprobar si se necesita una nueva línea al final
  if ($contador -ne 0) {
    Write-Host
  }

}
