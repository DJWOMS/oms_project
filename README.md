[![Build Status](https://travis-ci.org/DJWOMS/WomsTeam.svg?branch=master)](https://travis-ci.org/DJWOMS/WomsTeam)

# Start project OMS CMS
 
- Python => 3.7
- Django => 2
- Postgres == 10

**Установка:**

- pip install git+https://gitlab.com/moses-team/backend/moses-cms.git

- django-admin startproject "name" --template=https://github.com/DJWOMS/oms_project/archive/master.zip

**Команды**
- Создание файлов миграций
-- python manage.py makemigrations
- Применение миграций
-- python manage.py migrate
- Создание супер пользователя
-- python manage.py createsuperuser
- Создание пользователей
-- python manage.py adduser
- Создание страниц
-- python manage.py addpage
- Создание тестовых постов и категории
-- python manage.py addposts
- Создание меню
-- python manage.py addmenu
- Выполнение всех команд разом
-- python manage.py deploy
- Выполнение всех команд разом и заполнить тест данными
-- python manage.py deployGFS



