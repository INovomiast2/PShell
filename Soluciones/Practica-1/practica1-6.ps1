function Tabla-Multiplicar {
  # Pedir al usuario que ingrese el número
  $numero = Read-Host "Ingresa un número"

  # Convertir el número a valor numérico
  $numero = [int]$numero

  # Mostrar la tabla de multiplicar
  Write-Host "Tabla de multiplicar del número $numero :"

  for ($i = 1; $i -le 10; $i++) {
    $producto = $numero * $i
    Write-Host "$numero x $i = $producto"
  }
}
