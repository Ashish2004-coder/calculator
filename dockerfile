# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy rest of the server
COPY . .

# Run the Flask server
CMD ["python", "server.py"]