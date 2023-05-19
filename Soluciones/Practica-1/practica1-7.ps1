function Calcular-Divisores {
  # Pedir al usuario que ingrese el número
  $numero = Read-Host "Ingresa un número"

  # Convertir el número a valor numérico
  $numero = [int]$numero

  # Mostrar los divisores del número
  Write-Host "Divisores del número $numero :"
  for ($i = 1; $i -le $numero; $i++) {
    if ($numero % $i -eq 0) {
        Write-Host $i
    }
  }
  
}

