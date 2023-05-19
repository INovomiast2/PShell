function Es-Vocal {
  # Pedir al usuario que ingrese una letra
  $letra = Read-Host "Ingresa una letra"

  # Convertir la letra a minúscula para facilitar la comparación
  $letra = $letra.ToLower()

  # Verificar si la letra es una vocal
  if ($letra -eq "a" -or $letra -eq "e" -or $letra -eq "i" -or $letra -eq "o" -or $letra -eq "u") {
    Write-Host "La letra ingresada es una vocal"
  } else {
    Write-Host "La letra ingresada no es una vocal"
  }
}
