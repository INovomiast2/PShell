function Get-Windows-A {
  # Mostrar los archivos del directorio C:\Windows que empiezan por "A"
  $directorio = "C:\Windows"
  $filtro = "A*"
  Get-ChildItem -Path $directorio -Filter $filtro
}
