# Usa una imagen base de Python
FROM python:3.11.0

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt en el contenedor en /app
COPY requirements.txt /app/requirements.txt

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido del directorio actual en /app
COPY . /app

# Comando por defecto para ejecutar Celery
CMD ["celery", "-A", "tasks", "worker", "--loglevel=info" , "pool=solo"]
