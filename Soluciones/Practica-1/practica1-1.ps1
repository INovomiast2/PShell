function Get-Media {
  [CmdletBinding()]
  param(
        [Parameter(Position = 0, Mandatory = $true)]
        [double]$Numero1,

        [Parameter(Position = 1, Mandatory = $true)]
        [double]$Numero2,

        [Parameter(Position = 2, Mandatory = $true)]
        [double]$Numero3
  )

  $media = ($Numero1 + $Numero2 + $Numero3) / 3

  Write-Output "La media de los números es: $media"
}
