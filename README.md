# 🚀 Astro + Docker + Nginx Static Deployment

This project is a minimal setup to test how to build and serve an [Astro](https://astro.build/) application using a multi-stage `Dockerfile`, Nginx, and a simple `Makefile` for automation.

## 🐳 Docker Overview

This setup uses a **multi-stage Docker build**:

1. **Build Stage**: Uses `node:20-alpine` to install dependencies and run `astro build`.
2. **Final Stage**: Uses `nginx:alpine` to serve the static files from `dist/`.

# 🚀 Astro + Docker + Nginx Static Deployment

This project is a minimal setup to test how to build and serve an [Astro](https://astro.build/) application using a multi-stage `Dockerfile`, Nginx, and a simple `Makefile` for automation.

## 📁 Project Structure

```
astro-docker-test/
├── src/
│   └── pages/
│       └── index.astro
├── public/
├── package.json
├── Dockerfile
├── Makefile
└── README.md
```

## 🐳 Docker Overview

This setup uses a **multi-stage Docker build**:

1. **Build Stage**: Uses `node:20-alpine` to install dependencies and run `astro build`.
2. **Final Stage**: Uses `nginx:alpine` to serve the static files from `dist/`.

---

## 🔧 How to Use

### 🛠 Build and Run

```bash
make up
```

This will:

- Build the Docker image (`astro-docker-app`)
- Run a container serving your static site at [http://localhost:3000](http://localhost:3000)

---

### 🧹 Clean Up

```bash
make clean
```

This will:

- Remove the Docker image (`astro-docker-app`)
- **Note**: Running containers are not removed unless explicitly handled

---

## 🗂 Makefile Commands

| Command      | Description                                 |
|--------------|---------------------------------------------|
| `make build` | Builds the Docker image                     |
| `make run`   | Runs the container on port 3000             |
| `make up`    | Builds and runs in one step                 |
| `make clean` | Removes the Docker image                    |
| `make logs`  | Shows logs from the latest running container |

---

## 📦 Requirements

- [Docker](https://www.docker.com/)
- [Make](https://www.gnu.org/software/make/) (built-in on Linux/macOS)

---

## 🧠 Why This Setup?

- Astro generates static files — perfect for Nginx.
- Using Docker multi-stage keeps the final image lightweight.
- Nginx handles serving files with high performance.
- Makefile makes the workflow easy and repeatable.

---

## 🧪 License

This project is just a test and has no license restrictions. Use it freely for learning and experimentation.
