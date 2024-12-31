# Proyecto Celery-Docker compose by Joze!!

Este proyecto utiliza Celery y Redis para manejar tareas en segundo plano. A continuación se indican los pasos para levantar los contenedores Docker y ejecutar una tarea de prueba.

## Requisitos

- Docker
- Docker Compose

## Pasos para ejecutar el proyecto

1. **Clona el repositorio:**

    ```bash
    git clone https://github.com/josezanle/celery-docker-compose.git
    cd celery
    ```

2. **Construye y levanta los contenedores:**

    ```bash
    docker-compose up --build
    ```

3. **Ejecuta la tarea en Celery:**

    En otra terminal, ejecuta los siguientes comandos:

    ```bash
    docker exec -it celery bash
    python tasks.py
    ```

    Asegúrate de que `celery` sea el nombre del contenedor especificado en tu archivo `docker-compose.yml`.

## Estructura del proyecto

```plaintext
CELERY/
├── .venv/
├── __pycache__/
├── tasks.py
├── requirements.txt
└── docker-compose.yml
