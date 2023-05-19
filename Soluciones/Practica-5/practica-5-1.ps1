function Get-Program-Files {
  # Obtener el listado de archivos en todos los subdirectorios de C:\Archivos de programa que empiecen por "A"
  $directorio = "C:\Archivos de programa"
  $filtro = "A*"
  $archivos = Get-ChildItem -Path $directorio -Filter $filtro -Recurse

  # Presentar los resultados en una tabla autoajustada
  $archivos | Format-Table -AutoSize
}

#Script by: INovomiast
