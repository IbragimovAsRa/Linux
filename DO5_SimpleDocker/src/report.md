# Simple Docker
Введение в докер. Разработка простого докер образа для собственного сервера.

## Часть 1. Готовый докер
Загрузка образа, команда `docker pull`: \
![docker pull](media/img_1.png)

Получить список скачанных образов с их описанием, команда `docker images`: \
![docker pull](media/img_2.png)

Запуск докер образа, команда `docker run -d [image_id|repository]`: \
![docker run](media/img_3.png)

Проверка запущенных контейнеров, команда `docker ps`: \
![docker ps](media/img_4.png)

Получение подробной информации о контейнере, команда `docker inspect [container_id|container_name]`: \
![docker inspect](media/img_5.png)

Остановка работы контейнера, команда `docker stop [container_id|container_name]`: \
![docker stop](media/img_6.png)

Проверка остановки контейнера: \
![docker ps](media/img_7.png)

Запуск контейнера с мапингом портов `80` и `443`: \
![docker run -p](media/img_8.png)

Проверка запущенного контейнера: \
![docker ps](media/img_9.png)

Проверка роботоспособности веб-сервера `nginx`: \
![docker ps](media/img_10.png)

Перезапуск докер контейнера, команда `docker restart [container_id|container_name]`: \
![docker restart](media/img_11.png)

## Часть 2. Операции с контейнером
Чтение конфигурационнго файла `nginx.conf`, внутри докер контейнера, команда `exec`: \
![exec](media/img_12.png)

Настройка конфигурационного файла: по пути `/status` отдачу страницы статуса сервера `nginx`: \
![nginx.conf](media/img_13.png)

Копирование файла `nginx` в докер контейнер: \
![cp nginx.conf](media/img_14.png)

Перезапуск веб сервера `nginx`: \
![reload](media/img_15.png)

Проверка обработки адреса `localhost:80/status`: \
![curl](media/img_16.png)

Экспорт контейнера в архив `container.tar`, команда `export`: \
![export](media/img_17.png)

Удаление образа `nginx` при запущенном контейнере, команда `docker rmi [image_id|repository]`: \
![rmi](media/img_18.png)

Удаление контейнера `server_nginx`, команда `docker rm`: \
![rm](media/img_19.png)

Импорт удаленного контейнера обратно, команда `import`: \
![import](media/img_20.png)

Запуск и проверка импортированного контейнера: \
![curl](media/img_16.png)

Часть 3. Мини веб-сервер

