# music-website
A music website developed using Spring Boot

This website is developed using Spring Boot, Spring Data JPA, H2 database and JTE template engine. 

# Setting up the project and running the server

To setup the project simply clone repository and run:

```shell
.\mvnw install
```
This will install the required dependencies for the project

# Running the project

In order to run the app, type,

```shell
.\mvnw spring-boot:run
```

This will start the built-in Tomcat server and will serve the website at 127.0.0.1

# Modifying the Database


This app uses an embedded H2 database to store app data. The admin panel for the DB can be found at
127.0.0.1/h2-console