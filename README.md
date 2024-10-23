# deploy-python

https://app.koyeb.com/?service_type=web&step=initialDeployment&type=git&repository=github.com%2FLL-coursera%2Fdeploy-python&instance_type=free&regions=fra&serviceId=c027533d-eaa1-4312-8a8f-41ffa0d814cc


Build and Run the Docker Container:
Build the Docker image:

bash
Copy code
docker build -t flask-app .
Run the Docker container:

bash
Copy code
docker run -p 5000:5000 flask-app
