function Calcular-Factorial {
  # Esperar a que el Usuario ingrese el número:
  $numero = Read-Host "Ingresa un numero: "

  # Convertimos ese numero a valor numerico:
  $numero = [int]$numero

  # Validamos si el numero es negativo o cero:
  if ($numero -lt 0) {
    Write-Host "El factorial no vale para numeros negativos!"
  } elseif ($numero -eq 0) {
    $factorial = 1
  } else {
    $factorial = 1

    # Calcular el factorial utilizando un bucle for:
    for ($i = 1; $i -le $numero; $i++) {
      $factorial *= $i
    }
  }

  #Mostrar el factorial:
  Write-Host "El factorial de $numero es: $factorial"
}
