#!/bin/bash
echo "Esperando 3 segundos a que la aplicación inicie..."
sleep 3
echo "Iniciando prueba de conexión..."
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://172.17.0.1:5050)

if [ "$HTTP_STATUS" == "200" ]; then
    echo "Prueba completada: La aplicación está viva en 172.17.0.1:5050."
    exit 0
else
    echo "Prueba fallida: El servidor devolvió el código HTTP $HTTP_STATUS"
    exit 1
fi
