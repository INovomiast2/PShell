function Cambiar-Variable {
  # Definir las dos variables
  $variable1 = "Hola"
  $variable2 = "Mundo"

  # Mostrar los valores iniciales
  Write-Host "Antes del intercambio:"
  Write-Host "Variable 1: $variable1"
  Write-Host "Variable 2: $variable2"

  # Intercambiar los valores utilizando una variable auxiliar
  $auxiliar = $variable1
  $variable1 = $variable2
  $variable2 = $auxiliar

  # Mostrar los valores intercambiados
  Write-Host "Después del intercambio:"
  Write-Host "Variable 1: $variable1"
  Write-Host "Variable 2: $variable2"
  
}
