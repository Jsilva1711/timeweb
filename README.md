Timeweb Environment
 Setup Instructions

To set up the development environment for the timeweb application using Docker, follow the steps below:

1. Pull the Docker Image from Docker Hub:

   docker pull jsilva13/timeweb-dev:latest

2. Run the container

   docker run -it -p 5000:5000 jsilva13/timeweb-dev:latest

3. navigate to the timeweb directory

   cd /home/dev/timeweb

4. Activate the Virtual Environment
   
source venv/bin/activate 

5. Run the Flask app

flask run --host=0.0.0.0
