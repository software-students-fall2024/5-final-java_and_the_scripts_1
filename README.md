![web-app-build](https://github.com/software-students-fall2024/5-final-java_and_the_scripts_1/actions/workflows/deploy.yml/badge.svg)
![mongodb-ci-cd](https://github.com/software-students-fall2024/5-final-java_and_the_scripts_1/actions/workflows/mongodb-ci-cd.yml/badge.svg)
# Final Project

An exercise to put to practice software development teamwork, subsystem communication, containers, deployment, and CI/CD pipelines. See [instructions](./instructions.md) for details.

# Team Members

[Jun Li](https://github.com/jljune9li )

[Daniel Brito](https://github.com/danny031103 )

[Natalie Ovcarov](https://github.com/nataliovcharov)

[Alvaro Martinez](https://github.com/AlvaroMartinezM)

# Product Vision Statement
WEARther is a web-based application that combines weather data and curated outfit recommendations to provide a seamless user experience. 


## **Description**
**WEARther** uses real-time weather data to suggest gender-specific clothing options suitable for the current temperature and conditions. Unlike generic weather apps or static fashion guides, our product delivers a dynamic and location-specific outfit suggestion system, integrated with an intuitive, user-friendly interface and robust backend powered by Dockerized services.

---

## **Features**
- User Authentication (Login/Registration)
- Location-based weather data retrieval via OpenWeather API
- Outfit suggestions based on gender and temperature ranges
- Fully responsive user interface
- Dockerized architecture for seamless deployment

---

## **Running the Project**
### Prerequisites
Make sure you have Python 3.8 or higher installed:
```bash
python3 --version
```
1. Clone the repository and go to cloned directory :
    ```bash
    git clone https://github.com/software-students-fall2024/5-final-java_and_the_scripts_1.git
    ```
    ```
    cd 5-final-java_and_the_scripts_1
    ```
2. Configure .env file
  - Copy the provided contents of .env posted in the discord and create your own .env file located in the project folder.
3. Build and start the Docker containers:
    ```bash
        docker-compose up --build --force-recreate
    ```
4. Access the web app:
  - Open your browser and navigate to ` http://localhost:5002`.

5. Shut down the Docker containers
    ```bash
    docker-compose down
    ```

## **Docker Images Link**

- [web-app subsystem dockerhub link](https://hub.docker.com/r/nataliovcharov/web-app)
- [mongodb subsystem dockerhub link](https://hub.docker.com/r/nataliovcharov/mongodb)

---

### **Accessing the App**
- **Register a new user** via the `/register` route.
- **Log in** via the `/login` route.
- **Add a location** and view outfit recommendations via the `/locations` route.

---
## **Contributing**
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix:
```bash
git checkout -b feature-name
```
3. Commit your changes:
```bash
git commit -m "Add feature-name"
```
4. Push to your branch:
```bash
git push origin feature-name
```
5. Submit a pull request.

## **Troubleshooting**
- **Environment Variables Not Found**:
  Ensure the `.env` file is present in the root directory and contains valid values.
- **Database Connection Issues**:
  Confirm that the MongoDB container is running:
  ```bash
      docker ps
  ```
## **CI/CD Deployment**
The application is automatically deployed to a DigitalOcean Droplet using GitHub Actions.

Steps in CI/CD Workflow
Build the Docker Image: The Flask app is built as a Docker image.
Push to Docker Hub: The Docker image is uploaded to Docker Hub.
Deploy on DigitalOcean: The Docker container is deployed to a DigitalOcean Droplet.
View Deployed Application
The application is deployed at:
https://hammerhead-app-ry66m.ondigitalocean.app/


