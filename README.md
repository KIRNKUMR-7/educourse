# EduVerse — Course Registration Platform

A full-stack course registration web application.

## Project Structure

```
EduVerse/
├── frontend/          ← Static site (deploy to Vercel)
│   ├── index.html         Home page
│   ├── available.html     Course catalog
│   ├── register.html      Course registration form
│   ├── registeres.html    Registered students list
│   ├── style.css          Global styles
│   ├── script.js          API helpers (set BACKEND_URL)
│   ├── vercel.json        Vercel deployment config
│   ├── schema.sql         DB schema reference
│   └── .gitignore
│
└── backend/           ← Spring Boot REST API
    ├── src/
    │   └── main/
    │       ├── java/com/example/CourseRegister/
    │       │   ├── Controller/
    │       │   ├── Module/
    │       │   ├── Repository/
    │       │   └── Service/
    │       └── resources/
    │           ├── application.properties
    │           └── data.sql
    ├── pom.xml
    ├── mvnw / mvnw.cmd
    └── .gitignore
```

## Frontend (Vercel)

The frontend is a **pure static site** — no build step required.

### Deploy to Vercel
1. Go to [vercel.com/new](https://vercel.com/new)
2. Upload/drag the `frontend/` folder
3. Click **Deploy** (no build settings needed)

### Local preview
Just open `frontend/index.html` in a browser.

### Connect to backend
In `frontend/script.js`, set:
```js
const BACKEND_URL = 'https://your-api-url.com';
```

## Backend (Spring Boot)

### Run locally
```bash
cd backend
./mvnw spring-boot:run
```
API runs at `http://localhost:8080`

### Key endpoints
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/Courses` | List all courses |
| POST | `/Courses/Register` | Register a student |
| GET | `/Courses/RegisteredStudents` | List registered students |
