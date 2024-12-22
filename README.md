
# Combined Application for Backend and Frontend

## Installation and Setup

### Prerequisites
- Docker installed on your machine.
- Docker Compose installed.

### Steps to Run the Application
1. Clone the repository or download the files.
2. Navigate to the directory containing the `docker-compose.yml` file.
3. Run the following command to start the application:
   ```bash
   docker-compose up --build
   ```
4. Access the application:
   - Backend: `http://localhost:3000`
   - Frontend: `http://localhost`

### Environment Variables
- Backend:
  - `NODE_ENV`: Set to `production`.
- Frontend:
  - `REACT_APP_API_URL`: Set to `http://localhost:3000/api` (already configured).

### Notes
- The application uses PostgreSQL as the database, with data persistence enabled.
- To scale the backend, adjust the `replicas` in the `docker-compose.yml` file.
