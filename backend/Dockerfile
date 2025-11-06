FROM python:3.12-slim

WORKDIR /app
COPY app.py requirements.txt ./
# Install Python dependecies
RUN pip install --no-cache-dir -r requirements.yaml

# app port
EXPOSE 5000
CMD ["python", "app.py"]
