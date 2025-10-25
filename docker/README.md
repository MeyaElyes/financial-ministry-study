# Docker Configurations

Additional Docker files and configurations.

## Files
- Backend Dockerfile (in ../backend/)
- Dashboard Dockerfile (in ../dashboard/)
- Main docker-compose.yml (in ../)

## Docker Commands Reference

### Starting Services
```bash
# Start all services
docker-compose up -d

# Start specific service
docker-compose up -d postgres

# Start with logs visible
docker-compose up
```

### Stopping Services
```bash
# Stop all
docker-compose down

# Stop and remove volumes (⚠️ deletes data)
docker-compose down -v
```

### Viewing Logs
```bash
# All services
docker-compose logs

# Specific service
docker-compose logs postgres

# Follow logs (real-time)
docker-compose logs -f
```

### Rebuilding
```bash
# Rebuild all
docker-compose build

# Rebuild specific service
docker-compose build backend
```
