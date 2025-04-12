# Etapa de build
FROM node:20-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Etapa de producción: Nginx
FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 3000

RUN sed -i 's/80;/3000;/' /etc/nginx/conf.d/default.conf