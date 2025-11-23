# WaterMonitor – Sistema Web de Monitoreo de Agua con AWS

Este proyecto es un prototipo funcional de un sistema IoT diseñado para monitorear el nivel de agua en un tinaco utilizando AWS y un dashboard web moderno.

## Tecnologías utilizadas
- AWS S3
- HTML/CSS/JavaScript
- Scripts Bash para simular sensores
- Arquitectura IoT preparada para Arduino/ESP32

---

## 📂 Estructura del proyecto

WaterMonitorSimple/
│
├── frontend/
│ └── index.html
│
├── scripts/
│ ├── update_level.sh
│ └── get_level.sh
│
├── level.json
└── README.md


---

## 🚀 Despliegue en AWS S3

1. Crear bucket:
aws s3 mb s3://watermonitor-simple-27824

markdown
Copy code

2. Subir dashboard:
aws s3 cp frontend/ s3://watermonitor-simple-27824 --recursive


3. Subir level.json:
aws s3 cp level.json s3://watermonitor-simple-27824/


4. Abrir el dashboard:
https://watermonitor-simple-27824.s3.amazonaws.com/index.html


---

## 🧪 Simular nivel del tinaco

Actualizar nivel:

./scripts/update_level.sh 85%
aws s3 cp level.json s3://watermonitor-simple-27824/

---

## 🧱 Arquitectura prevista
- Frontend Web en S3
- Backend planeado con Lambda + API Gateway (limitado por permisos AWS Academy)
- Sensor físico (HC-SR04) vía Arduino/ESP32 para futura integración

---

## 🧩 Pruebas de resiliencia
- Manejo de error del backend
- Manejo de AccessDenied de S3
- JSON corrupto → UI no se rompe
- Latencia o pérdida del sensor simulado

---

## 📌 Nota sobre AWS Academy
El entorno impidió habilitar políticas públicas en S3 y el despliegue completo de Lambda.  
Se documenta la arquitectura planeada y la resiliencia del frontend ante fallos.

---
