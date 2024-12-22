
# Unified Application for Backend and Frontend with Docker

## Installation Instructions

### Prerequisites
- Docker installed on your system.
- Docker Compose installed.

### Steps to Set Up
1. Clone or download the repository.
2. Navigate to the root directory of the project (where the `docker-compose.yml` is located).
3. Run the following command to build and start all services:
   ```bash
   docker-compose up --build
   ```

### Accessing the Application
- **Backend**: Accessible at `http://localhost:3000`.
- **Frontend**: Accessible at `http://localhost`.

### Configuration
- Backend and Frontend are configured to run with scalable setups using PM2 and Nginx.
- PostgreSQL is used as the database.

### Scaling the Backend
To scale backend services:
1. Open `docker-compose.yml`.
2. Adjust the `replicas` under the backend service.

### Troubleshooting
- Ensure all dependencies like Docker and Docker Compose are correctly installed.
- Use the following command to check logs:
   ```bash
   docker-compose logs
   ```
