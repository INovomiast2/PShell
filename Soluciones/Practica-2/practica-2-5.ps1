function Comprobar-Primo {
  # Pedir al usuario que ingrese el número
  $numero = Read-Host "Ingresa un número"

  # Convertir el número a valor numérico
  $numero = [int]$numero

  # Verificar si el número es primo
  $esPrimo = $true

  if ($numero -le 1) {
    $esPrimo = $false
  } else {
    for ($i = 2; $i -le ($numero / 2); $i++) {
        if ($numero % $i -eq 0) {
            $esPrimo = $false
            break
          }
      }
  }

  # Mostrar el resultado
  if ($esPrimo) {
    Write-Host "$numero es un número primo"
  } else {
    Write-Host "$numero no es un número primo"
  }
  
}
