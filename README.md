# WebSandbox

## Parts
- **Flask** - framework
- **files:**
  - `backend/app.py` — Flask app
  - `backend/Dockerfile` — image description
  - `backend/requirements.txt` — dependencies for pip
### Local run for test
```bash
docker build -t flask_app ./backend
docker run -p 5000:5000 flask_app
Access: [http://localhost:5000](http://localhost:5000)
