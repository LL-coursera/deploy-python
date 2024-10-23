# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install necessary packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the application using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app.py"]
