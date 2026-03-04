# Content Management System

A full-stack content management system built with a **Nuxt 3** frontend and a **Laravel** backend, orchestrated with Docker Compose.

## Tech Stack

- **Frontend:** Nuxt 3 (Vue 3), Tailwind CSS, Bun
- **Backend:** Laravel (PHP), Vite
- **Database:** MySQL
- **Web Server:** Nginx (reverse proxy)
- **Admin:** phpMyAdmin
- **Containerization:** Docker & Docker Compose

## Project Structure

```
content-management-system/
├── content-management-system-frontend/   # Nuxt 3 frontend (git submodule)
├── content-management-system-backend/    # Laravel backend (git submodule)
├── nginx/conf.d/                         # Nginx configuration
├── docker-compose.yml                    # Development environment
├── docker-compose-prod.yml               # Production environment
└── storage/db-data/                      # MySQL data volume
```

## Prerequisites

- Docker & Docker Compose
- Git (with SSH access for submodules)

## Getting Started

### 1. Clone the repository with submodules

```bash
git clone --recurse-submodules git@github.com:Jerven-git/content-management-system.git
cd content-management-system
```

If you already cloned without submodules:

```bash
git submodule update --init --recursive
```

### 2. Configure environment variables

Create a `.env` file in the project root with the following variables:

```env
DB_DATABASE=your_database
DB_ROOT_PASSWORD=your_root_password
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

### 3. Start the development environment

```bash
docker compose up -d --build
```

### 4. Set backend storage permissions

```bash
docker compose exec backend chown -R www-data:www-data storage/
```

## Services

| Service      | URL                    | Description              |
|--------------|------------------------|--------------------------|
| Frontend     | http://localhost:8000   | Nuxt 3 app (via Nginx)   |
| Backend API  | http://localhost:8000/api | Laravel API (via Nginx) |
| phpMyAdmin   | http://localhost:8001   | Database management       |

## Development

- The frontend runs with HMR enabled on port `3000`, proxied through Nginx on port `8000`.
- The backend serves the Laravel API via PHP-FPM on port `9000`, proxied through Nginx at `/api`.
- Source directories are volume-mounted for live reloading.

## Production

```bash
docker compose -f docker-compose-prod.yml up -d --build
```

The production setup serves the pre-built frontend via Nginx and exposes ports `80` and `443` with SSL support.
