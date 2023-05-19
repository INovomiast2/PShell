function Get-Macromedia {
  # Mostrar los objetos del registro en la ruta HKCU:\HKEY_CURRENT_USER\Software\Macromedia
  $rutaRegistro = "HKCU:\HKEY_CURRENT_USER\Software\Macromedia"
  Get-ItemProperty -Path $rutaRegistro
}
