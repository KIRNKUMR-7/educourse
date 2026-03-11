/**
 * EduVerse — API helpers
 *
 * On Vercel (or any static host) the Spring Boot backend is NOT available.
 * All fetch calls gracefully fall back to static / localStorage data.
 *
 * If you self-host with a live backend, set BACKEND_URL below.
 */
const BACKEND_URL = ''; // e.g. 'https://your-api.onrender.com' — leave blank for static-only

/**
 * Show available courses from the backend (table view on available.html,
 * if you ever wire a table instead of the static card grid).
 */
function showCourse() {
    if (!BACKEND_URL) return;  // no-op in static / Vercel mode
    fetch(`${BACKEND_URL}/Courses`)
        .then(response => response.json())
        .then(courses => {
            const table = document.getElementById('CourseTable');
            if (!table) return;
            courses.forEach(course => {
                table.innerHTML += `
                <tr>
                    <td>${course.CourseId}</td>
                    <td>${course.CourseName}</td>
                    <td>${course.DurationMonth}</td>
                    <td>${course.Trainer}</td>
                </tr>`;
            });
        })
        .catch(() => { /* backend offline */ });
}

/**
 * Show registered students from the backend (table view on registeres.html).
 * Falls back silently — registeres.html already uses localStorage + sample data.
 */
function showStudents() {
    if (!BACKEND_URL) return;  // no-op in static / Vercel mode
    fetch(`${BACKEND_URL}/Courses/RegisteredStudents`)
        .then(response => response.json())
        .then(students => {
            const table = document.getElementById('RegisteredTable');
            if (!table) return;
            students.forEach(s => {
                table.innerHTML += `
                <tr>
                    <td>${s.CourseName}</td>
                    <td>${s.email}</td>
                    <td>${s.name}</td>
                </tr>`;
            });
        })
        .catch(() => { /* backend offline */ });
}
