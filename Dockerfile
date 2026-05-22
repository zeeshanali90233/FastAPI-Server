# 42.82 MB
FROM python:3.10-slim   

WORKDIR /app

COPY requirements.txt .

# 240 MB
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

EXPOSE 8000

CMD ["fastapi", "dev","main.py", "--host", "0.0.0.0", "--port", "8000"]
