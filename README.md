# dvdocker
## Общее описание проекта 
Развить навыки профессионального развёртывания простых программ с использованием Docker. 
## Описание работы с Docker:
* Установка Docker:
1. Обновим индекс пакетов командой sudo apt-get update
2. Установим необходимые пакеты командой sudo apt-get install ca-certificates curl gnupg
3. Добавим официальный GPG-ключ в Docker командами 
   sudo install -m 0755 -d /etc/apt/keyrings
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
   sudo chmod a+r /etc/apt/keyrings/docker.gpg
4. Добавим репозиторий Docker в источники Apt командами
  echo \ "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \ sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
5. Снова обновим индекс пакетов командой sudo apt-get update
6. Установим пакеты Docker командой sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
7. Проверим установку Docker командой sudo docker run hello-world
* Установка Docker compose
1. установим Docker compose командой sudo curl -L "https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose и сохраним исполняемый файл в /usr/local/bin/docker-compose
2. Установим права на исполнение для файла docker-compose: sudo chmod +x /usr/local/bin/docker-compose
3. Запустим команду, чтобы проверить версию Docker Compose: docker-compose --version
* Создание Dockerfile и образа
1. Создан репозиторий на  GitHub c именем dvdocker.
2. Репозиторий dvdocker клонирован в домашний каталог командой git clone https://github.com/DVlabs-projects/dvdocker.git
3. В репозитории создаем скрипт datetime.sh выводящий текущую дату и время.
4. Создаем Dockerfile для создания образа docker.
5. Сборка образа из файла Dockerfile командой docker build -t <Имя образа>
6. ID Контейнера можно посмотреть командой docker ps
7. Скрипт после запуска останавливается командой docker stop <id контейнера>
* Создание docker-compose.yml
1. В том же репозитории создаем docker-compose.yml
2. Скрипт в данном случае запускается отдельно с помощью команды вdocker-compose.yml, для этого скрипт скопирован в отдельный каталог
3. Командой docker-compose build собираем образ
4. docker-compose up запускаем образ 