function Suma-Naturales {
  #Variable para guardar la suma
  $suma = 0

  #Bucle for para sumar dichos numeros:
  for($i = 1; $i -le 20; $i++) {
    $suma += $i
  }

  Write-Host "La suma de los primeros 20 numeros naturales son: $suma"
}
