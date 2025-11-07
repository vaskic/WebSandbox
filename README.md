# WebSandbox

## Flask framework
- **Flask** - framework
- **files:**
  - `backend/app.py` — Flask app
  - `backend/Dockerfile` — image description
  - `backend/requirements.txt` — dependencies for pip
### Local run for test
```bash
docker build -t flask_app ./backend
docker run -p 5000:5000 flask_app
```
#### check
`curl http://localhost:5000`

## Terraform to build up docker env
- network
- Persistent volume dor Postgres data

### Local run for test
```bash
cd terraform
terraform init
terraform plan
terraform apply
```
#### check
```bash
docker network ls
docker volume ls
```

## Postgres
 - `docker-compose.yaml` - Docker Compose configuration for Postgres
 - `.env` variables file ignored by git

### .env file content
```bash
POSTGRES_USER=user
POSTGRES_PASSWORD=<postgres password>
POSTGRES_DB=websandbox
DATABASE_URL=postgresql://user:<postgres password>@postgres_db:5432/websandbox
```

#### run
```bash
docker-compose -f docker-compose.yaml up -d
```
#### check
```bash
docker ps
```

