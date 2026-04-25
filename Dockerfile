#Сборка
FROM node:alpine AS build
WORKDIR /app
# Копируем файлы зависимостей и устанавливаем их 
COPY package*.json ./
RUN npm install
# Копируем исходный код и собираем статику
COPY . .
RUN npm run build

# Продакшн 
FROM nginx:alpine
# Копируем билд из первого этапа в папку Nginx 
COPY --from=build /app/build /usr/share/nginx/html
# Открываем порт 80 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]