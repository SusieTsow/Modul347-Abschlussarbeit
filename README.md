# Spring MVC Book Application

A simple book management application developed using the Spring MVC framework, containerized with Docker, and deployed on the Render cloud platform.

## Overview
This application allows users to manage their book collection through a web interface. Users can view, add, edit, and delete books from their personal library.

## Features
- User login with username and email
- Book management (CRUD operations)
- Session management to remember user login state
- Responsive design with a clean user interface

## Tech Stack
**Backend:** Java 17, Spring Boot, Spring MVC  
**Frontend:** Thymeleaf, HTML, CSS  
**Build Tool:** Maven  
**Containerization:** Docker  
**Deployment:** Render cloud platform

## Project Structure
```
spring-mvc-app/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── ch/informatik/spring_mvc_app/
│   │   │       ├── controller/
│   │   │       │   ├── BookController.java
│   │   │       │   └── HomeController.java
│   │   │       ├── model/
│   │   │       │   └── BookModel.java
│   │   │       └── service/
│   │   │           └── BookService.java
│   │   └── resources/
│   │       ├── static/
│   │       │   └── styles/
│   │       │       └── style.css
│   │       └── templates/
│   │           ├── components/
│   │           │   ├── footer.html
│   │           │   └── navigation.html
│   │           ├── book_page.html
│   │           ├── create_book_page.html
│   │           ├── edit_book_page.html
│   │           └── home_page.html
└── docker/
    └── Dockerfile
```

## Setup and Installation

### Prerequisites
- Java 17 or higher
- Maven
- Docker (for containerized deployment)

### Local Development

#### Clone the repository:
```bash
git clone https://github.com/SusieTsow/Modul347-Abschlussarbeit
cd spring-mvc-book-app
```

#### Build the project:
```bash
mvn clean install
```

#### Run the application:
```bash
mvn spring-boot:run
```

#### Access the application:
```
http://localhost:8080
```

## Docker Deployment

#### Build the Docker image:
```bash
docker build -t spring-mvc-book-app:latest -f docker/Dockerfile .
```

#### Run the container:
```bash
docker run -p 8080:8080 spring-mvc-book-app:latest
```

## Deployment on Render

This application is deployed on Render using its Web Service feature.

### Deployment Steps
1. Log in to your Render account
2. Create a new Web Service
3. Connect to your GitHub repository
4. Configure the service:
    - **Build Command:** `mvn clean package`
    - **Start Command:** `java -jar target/spring-mvc-app-0.0.1-SNAPSHOT.jar`
    - **Runtime Environment:** Docker
5. Set up environment variables as needed
6. Deploy the service

## Usage
- Navigate to the home page
- Enter your login and email
- Click "Show books" to view your book collection
- Use the "Add new book" button to create a new book
- Use "Edit" or "Delete" buttons to modify or remove books

## Application Flow
- The home page (`/`) displays a login form
- After login, users are redirected to the books page (`/books`)
- The books page shows all books associated with the user
- Users can create, edit, or delete books from this interface

## Contributing
1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request