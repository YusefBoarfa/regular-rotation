# 🚀 Astro + Docker + Nginx Static Deployment

This project is a minimal setup to test how to build and serve an [Astro](https://astro.build/) application using a multi-stage `Dockerfile`, Nginx, and a simple `Makefile` for automation.

## 🐳 Docker Overview

This setup uses a **multi-stage Docker build**:

1. **Build Stage**: Uses `node:20-alpine` to install dependencies and run `astro build`.
2. **Final Stage**: Uses `nginx:alpine` to serve the static files from `dist/`.

## 🔧 How to Use

### 🛠 Build and Run

```bash
make up

This will:
	•	Build the Docker image (astro-docker-app)
	•	Run a container serving your static site at http://localhost:3000

Clean Up
    make clean


This will:
	•	Remove the Docker image (astro-docker-app)
	•	(Note: running containers are not removed unless added explicitly)

📦 Requirements
	•	Docker
	•	Make (built-in on Linux/macOS)

 Why This Setup?
	•	Astro generates static files — perfect for Nginx.
	•	Using Docker multi-stage keeps the final image lightweight.
	•	Nginx handles serving files with high performance.
	•	Makefile makes the workflow easy and repeatable.

🧪 License

This project is just a test and has no license restrictions. Use it freely for learning and experimentation.