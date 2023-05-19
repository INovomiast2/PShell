function Get-Process-Commands {
  # Obtener el listado de comandos relacionados con Process
  $comandos = Get-Command -Noun Process

  # Mostrar el listado de comandos
  Write-Host "Comandos relacionados con Process:"
  $comandos | ForEach-Object {
    Write-Host $_.Name
  }

}
