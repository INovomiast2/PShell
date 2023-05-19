function Ecuacion-2Grado {
  # Pedir al usuario que ingrese los coeficientes de la ecuación
  $a = Read-Host "Coeficiente a:"
  $b = Read-Host "Coeficiente b:"
  $c = Read-Host "Coeficiente c:"

  # Convertir los coeficientes a valores numéricos
  $a = [double]$a
  $b = [double]$b
  $c = [double]$c

  # Calcular el discriminante
  $discriminante = $b*$b - 4*$a*$c

  if ($discriminante -gt 0) {
    # Raíces reales y diferentes
    $raiz1 = (-$b + [math]::sqrt($discriminante)) / (2*$a)
    $raiz2 = (-$b - [math]::sqrt($discriminante)) / (2*$a)
    Write-Host "Las raíces son reales y diferentes:"
    Write-Host "Raíz 1: $raiz1"
    Write-Host "Raíz 2: $raiz2"
  } elseif ($discriminante -eq 0) {
    # Raíces reales e iguales
    $raiz = (-$b) / (2*$a)
    Write-Host "Las raíces son reales e iguales:"
    Write-Host "Raíz: $raiz"
  } else {
    # Raíces imaginarias
    $parteReal = (-$b) / (2*$a)
    $parteImaginaria = [math]::sqrt(-$discriminante) / (2*$a)
    Write-Host "Las raíces son imaginarias:"
    Write-Host "Raíz 1: $parteReal + $parteImaginaria i"
    Write-Host "Raíz 2: $parteReal - $parteImaginaria i"
  }
  
}

# Script by: INovomiast
