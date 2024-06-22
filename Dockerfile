#Используем образ alpine
FROM python:3.7.2-alpine3.8
#Метка с почтой
LABEL maintainer="dimeant@mail.ru" 
#Переменная
ENV ADMIN="DV" 
# Устанавливаем зависимости
RUN apk update && apk upgrade && apk add bash
# Копируем код из локального контекста в рабочую директорию образа
COPY . .
# Запускаем скрипт
CMD ["bash", "./datetime.sh"]
#Скрипт после запуска останавливается командой docker stop <id контейнера>
#ID Контейнера можно посмотреть командой docker ps
#Сборка образа из файла Dockerfile командой docker build -t <Имя образа>
