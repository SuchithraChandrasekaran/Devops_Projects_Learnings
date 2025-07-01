# Multi-Service Docker Application
A comprehensive multi-service application demonstrating advanced Docker concepts including 
- custom base images, 
- multi-stage builds, 
- secrets management, 
- health checks, 
- networking, and 
- persistent storage.

## 1. Architecture
This application consists of five interconnected services:
```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   Client    │────│    Nginx    │────│ React Web   │
│  (Browser)  │    │   (Proxy)   │    │    App      │
└─────────────┘    └─────────────┘    └─────────────┘
                           │
                   ┌───────┴───────┐
                   │               │
            ┌─────────────┐ ┌─────────────┐
            │  Express    │ │    Redis    │
            │     API     │ │   (Cache)   │
            └─────────────┘ └─────────────┘
                   │
            ┌─────────────┐
            │   MongoDB   │
            │ (Database)  │
            └─────────────┘
```
## 2.Services Overview

Service | Technology | Port | Purpose
--------|------------|------|--------
Web | React + Nginx | 3000 | Frontend application with optimized production build
API | Node.js + Express | 5000 | Backend REST API with authentication and validation
Database | MongoDB | 27017 | Primary data storage with user management
Cache | Redis | 6379 | Session storage and API response caching
Proxy | Nginx | 80/443 | Reverse proxy, load balancing, and SSL termination

##  3.Features

### Docker Best Practices

- Multi-stage builds for optimized image sizes
- Custom base images for consistency
- Non-root users for enhanced security
- Health checks for service monitoring
- Docker secrets for sensitive data
- Named volumes for data persistence
- Custom networks for service isolation
- Resource limits and constraints
- Logging configuration with rotation

### Application Features

- **CRUD Operations** - Create, read, update, delete users
- **Real-time Caching** - Redis caching for improved performance
- **Input Validation** - Comprehensive data validation
- **Error Handling** - Graceful error management
- **Security Headers** - Helmet.js security middleware
- **Health Monitoring** - Built-in health check endpoints

## 4.Steps to setup
i. Clone the Repository

        cd multi-service-docker-app 

ii. Create Required Directories

       mkdir -p secrets mongodb-init nginx/ssl web/src api

iii. Set Up Secrets

     Create the secret files:
     - Database password
                echo "suchithra_db_password" > secrets/db_password.txt

     - JWT secret key
                echo "suchithra_jwt_secret_key" > secrets/jwt_secret.txt

iv. Build and Start Services

    - Build all services
        docker-compose build

    - Start all services
        docker-compose up -d

    - View logs
        docker-compose logs -f

v. Verify Installation

- Web Application: http://localhost:3000
- API Health Check: http://localhost:5000/health
- Nginx Proxy: http://localhost:80

## 5. Project Structure
```
multi-service-docker-app/
├── docker-compose.yml          # Main orchestration file
├── README.md                   
├── secrets/                    # Docker secrets
│   ├── db_password.txt
│   └── jwt_secret.txt
├── web/                        # React frontend
│   ├── Dockerfile
│   ├── package.json
│   ├── nginx.conf
│   └── src/
│       ├── App.js
│       └── App.css
├── api/                        # Express backend
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
├── nginx/                      # Reverse proxy
│   ├── Dockerfile
│   ├── nginx.conf
│   └── ssl/
└── mongodb-init/               # Database initialization
    └── init-mongo.js
```

## 6. Configuration
Environment Variables
--------------------
The application uses the following environment variables:

API Service
```
NODE_ENV=production
PORT=5000
MONGODB_URI=mongodb://mongodb:27017/appdb
REDIS_URL=redis://redis:6379
DB_NAME=appdb
```
MongoDB
```
MONGO_INITDB_ROOT_USERNAME=admin
MONGO_INITDB_ROOT_PASSWORD_FILE=/run/secrets/db_password
MONGO_INITDB_DATABASE=appdb
```
Docker Networks
```
The application uses a custom bridge network (app-network) with subnet 172.20.0.0/16 for service communication.
```
Persistent Storage
```
MongoDB Data: mongodb_data volume mounted at /data/db
Redis Data: redis_data volume mounted at /data
```
