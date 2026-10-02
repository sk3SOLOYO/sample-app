#!/bin/bash
echo "Iniciando prueba de conexión..."
# Obtenemos solo el código de estado HTTP (ej. 200, 404, 500)
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5050)

if [ "$HTTP_STATUS" == "200" ]; then
    echo "Prueba completada: La aplicación está viva y respondiendo en localhost:5050."
    exit 0
else
    echo "Prueba fallida: El servidor devolvió el código HTTP $HTTP_STATUS"
    exit 1
fi
