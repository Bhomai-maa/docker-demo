# Base Image
FROM python:3.14.6-slim

# Working directory inside container
WORKDIR /app

# Copy dependency file first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Application port
EXPOSE 5000

# Start application
CMD ["python", "app.py"]