function Get-Windows-Output {
  # Listar los archivos de texto (.txt) en el directorio C:\Windows y sus subdirectorios
  $directorio = "C:\Windows"
  $filtro = "*.txt"
  Get-ChildItem -Path $directorio -Filter $filtro -Recurse
}

#Script by: INovomiast
