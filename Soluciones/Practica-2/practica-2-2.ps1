function Calcular-Radio {
  # Pedir al usuario que ingrese el radio del círculo
  $radio = Read-Host "Ingresa el radio del círculo"

  # Convertir el radio a valor numérico
  $radio = [double]$radio

  # Calcular el área del círculo
  $area = [math]::PI * $radio * $radio

  # Mostrar el área del círculo
  Write-Host "El área del círculo con radio $radio es: $area"
  
}
