function Get-Verb-New {
  # Obtener el listado de comandos cuyo verbo sea "New"
  $comandos = Get-Command -Verb New

  # Mostrar el listado de comandos
  Write-Host "Comandos cuyo verbo es 'New':"
  $comandos | ForEach-Object {
    Write-Host $_.Name
  }
}

#Script by: INovomiast
