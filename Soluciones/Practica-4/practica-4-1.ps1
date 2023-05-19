function List-ETC {
  # Listar el contenido del directorio C:\Windows\System32\drivers\etc
  $directorio = "C:\Windows\System32\drivers\etc"
  Get-ChildItem -Path $directorio
}
