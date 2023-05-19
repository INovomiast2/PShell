function Get-Service-Automation {
  # Mostrar los servicios
  Get-Service

  # Detener el servicio "Audio de Windows" con confirmación
  $serviceName = "AudioSrv"
  $service = Get-Service -Name $serviceName
  Write-Host "Deteniendo el servicio '$serviceName'..."
  $confirmMessage = "¿Estás seguro de que deseas detener el servicio '$serviceName'? (Sí/No)"
  $confirm = Read-Host $confirmMessage
  if ($confirm -eq "Sí" -or $confirm -eq "Si") {
    Stop-Service -Name $serviceName
    Write-Host "El servicio '$serviceName' ha sido detenido."
  } else {
    Write-Host "La acción de detener el servicio ha sido cancelada."
  }

  # Mostrar los servicios nuevamente
  Get-Service

  # Arrancar el servicio "Audio de Windows" en modo Debug
  Write-Host "Iniciando el servicio '$serviceName' en modo Debug..."
  Start-Service -Name $serviceName -ArgumentList "-debug"
}
