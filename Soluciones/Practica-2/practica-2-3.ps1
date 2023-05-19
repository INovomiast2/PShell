function Convertir-Tiempo {
  # Pedir al usuario que ingrese el número de horas
  $horas = Read-Host "Ingresa el número de horas"

  # Convertir las horas a valor numérico
  $horas = [int]$horas

  # Calcular el número de semanas, días y horas
  $semanas = [math]::Floor($horas / 168)  # 1 semana tiene 168 horas
  $dias = [math]::Floor(($horas % 168) / 24)  # 1 día tiene 24 horas
  $horasRestantes = $horas % 24

  # Mostrar el resultado
  Write-Host "Horas: $horas"
  Write-Host "Semanas: $semanas"
  Write-Host "Días: $dias"
  Write-Host "Horas restantes: $horasRestantes"
  
}
