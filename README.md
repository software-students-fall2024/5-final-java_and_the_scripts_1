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

### **Running the Project**
#### Prerequisites
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

---

### **Accessing the App**
- **Register a new user** via the `/register` route.
- **Log in** via the `/login` route.
- **Add a location** and view outfit recommendations via the `/locations` route.

---

## **Files and Directories**

- **`app.py`**: Main Flask application handling routes, user authentication, weather data retrieval, and database operations.
- **`test_app.py`**: Unit tests for the Flask app, including tests for weather data retrieval and route functionality.
- **`test_popdatabase.py`**: Unit tests for verifying the population of the MongoDB database with outfit data based on temperature ranges.
- **`popdatabase.py`**: Script for populating the database with outfits. Currently includes commented logic for inserting sample data into MongoDB.
- **`requirements.txt`**: Lists the Python dependencies required for the application, such as Flask, Flask-Login, and pymongo.
- **`Dockerfile`**: Defines the Docker image for the web app, including instructions for installing dependencies and setting up the environment.
- **`docker-compose.yml`**: Configures and orchestrates services for the application, including the Flask web app and MongoDB.
- **`templates/`**: Contains HTML templates used by the Flask app.
  - `index.html`: Displays weather data and outfit suggestions.
  - `locations.html`: Allows users to add and manage locations.
  - `login.html`: User login page.
  - `register.html`: User registration page.
- **`static/`**: Contains static assets like CSS, JavaScript, and images used in the application.
- **`images/`**: A folder where categorized images for outfits should be stored for database population.

### **Troubleshooting**
- **Environment Variables Not Found**:
  Ensure the `.env` file is present in the root directory and contains valid values.
- **Database Connection Issues**:
  Confirm that the MongoDB container is running:
  ```bash
      docker ps
  ```
