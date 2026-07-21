FROM python:3.11-slim

WORKDIR /app

# Copy dependency definition and install packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY . .

# Expose application port
EXPOSE 5000

# Set environment variables
ENV PORT=5000

# Start Flask Application
CMD ["python", "app.py"]
