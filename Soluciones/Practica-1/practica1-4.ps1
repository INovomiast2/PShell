function Obtener-Mayor {
    # Pedir al usuario que ingrese los dos números
    $numero1 = Read-Host "Ingresa el primer número"
    $numero2 = Read-Host "Ingresa el segundo número"

    # Convertir los números a valores numéricos
    $numero1 = [double]$numero1
    $numero2 = [double]$numero2

    # Comparar los números y determinar el mayor
    if ($numero1 -gt $numero2) {
        $mayor = $numero1
    } elseif ($numero2 -gt $numero1) {
        $mayor = $numero2
    } else {
        Write-Host "Los números son iguales"
        return
    }

    # Mostrar el número mayor
    Write-Host "El número mayor es: $mayor"
}
