function Get-Windows-TXT {
  # Obtener el listado de archivos *.txt en C:\Windows y subdirectorios
  $directorio = "C:\Windows"
  $filtro = "*.txt"
  $archivos = Get-ChildItem -Path $directorio -Filter $filtro -Recurse

  # Formatear los resultados en una tabla autoajustada
  $archivos | Format-Table -AutoSize -Property Name, Length, CreationTime, Extension, FullName
}

#Script by: INovomiast
