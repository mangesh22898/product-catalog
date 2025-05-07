# Use official Python runtime
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Expose port
EXPOSE 5000

# Run app
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]

