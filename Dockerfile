# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary packages specified in requirements.txt
# If you don't have a requirements.txt, you can skip this line
RUN pip install --no-cache-dir Flask

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=demo.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
