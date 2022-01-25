Сдача отчетности

    Вам необходимо написать Dockerfile и создать в этой же директории согласно заданию необходимые файлы. Полученные файлы необходимо положить в свой git-репозиторий, например github.com/vpupkin/docker/lab1
    Собранный контейнер необходимо загрузить в докер-репозиторий, для этого следует зарегистрироваться на hub.docker.com а затем предоставить ссылку на него преподавателю

Задание

* [x] (1) Найти где находится директория sources.list.d (К)
* [x] (2) Зайти на сайт https://www.debian.org/mirror/list и выбрать любое понравившееся зеркало. (Х)
* [x] (3) Записать зеркало в файл с названием <REPO_NAME>.list, где repo_name заменить на имя репозитория. Зеркало должно поддерживать скачивание main и non free пакетов. (Х)
* [x] (4) Выполнить обновление apt-кеша (Д)
* [x] (5) Обновить все пакеты в контейнере (Д)
* [x] (6) Установить веб сервер nginx (Д)
* [x] (7) Очистить скачанный apt-cache (Д)
* [x] (8) Удалить содержимое директории /var/www/ (Д)
* [x] (9) Создать в директории /var/www/ директорию с именем вашего сайта и папку с картинками (company.com/img) (Д)
* [x] (10) Поместить из папки с докер файлом в директорию /var/www/company.com файл index.html. Файл нужно создать рядом с Dockerfile и поместить туда какую-нибудь строку приветствия (Х,Д)
* [x] (11) Поместить из папки с докер файлом в директорию /var/www/company.com/img файл img.jpg (поместить туда какую-нибудь картинку). (Х,Д)
* [x] (12) Задать рекурсивно на папку /var/www/company.com права "владельцу - читать, писать, исполнять; группе - читать, исполнять, остальным - только читать" (Д)
* [x] (13) С помощью команды useradd создать пользователя <ваше имя> (Д)
* [x] (14) С помощью команды groupadd создать группу <ваша фамилия> (Д)
* [x] (15) С помощью команды usermod поместить пользователя <ваше имя> в группу <ваша фамилия> (Д)
* [x] (16) Рекурсивно присвоить созданных пользователя и группу на папку /var/www/company.com (Д)
* [x] (17) Воспользоваться конструкцией (sed -i 's/ЧТО ЗАМЕНИТЬ/НА ЧТО ЗАМЕНИТЬ/g' имя_файла) и заменить в файле /etc/nginx/sites-enabled/default следующую подстроку (/var/www/html) так, чтобы она соответствовала (/var/www/company.com) (Д)
* [x] (18) С помощью команды grep найти в каком файле задается пользователь (user), от которого запускается nginx (К)
* [x] (19) С помощью команды sed проделать операцию замены пользователя в файле найденном в пункте 17 на вашего пользователя (Д)
* [x] (20) Соберите ваш контейнер: docker build -t test .
* [x] (21) Запустить собранный контейнер и проверить, что он запустился от вашего пользователя. Для этого необходимо выполнить Docker exec -ti <container_id> bash в соседеней консоли, предварительно узнав идентификатор запущенного контейнера. Назовите все идентификаторы процессов для родительского и порожденного процессов. (Выполнять после успешной сборки) (Х)
* [ ] (22) Запустить ваш контейнер, но на этот раз передав аргументами нужные порты: docker run -ti -p 80:80 test
* [ ] (23) Откройте в браузере(или curl) 127.0.0.1:80. Вы должны получить вашу приветственную страницу. Сделайте скриншот страницы в браузере на фоне команды запуска контейнера. Скриншот положить в репозиторий (Х)
* [ ] (24) Выполните правильную постановку тега и загрузите ваш контейнер в docker hub. (Х)
