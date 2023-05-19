function Get-Set-L {
  # Obtener el listado de comandos cuyo verbo sea "Set" y el nombre empiece por "L"
  $comandos = Get-Command -Verb Set -Name L*

  # Mostrar el listado de comandos
  Write-Host "Comandos cuyo verbo es 'Set' y el nombre empieza por 'L':"
  $comandos | ForEach-Object {
    Write-Host $_.Name
  }
  
}

#Script by: INovomiast
