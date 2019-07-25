[![Build Status](https://travis-ci.org/DJWOMS/WomsTeam.svg?branch=master)](https://travis-ci.org/DJWOMS/WomsTeam)

# Start project OMS CMS
 
- Python => 3.6
- Django => 2
- Postgres == 10

**Установка:**

- Установить CMS 

::

    pip install git+https://github.com/DJWOMS/oms_cms.git
    
- Создать стартовый проект. В "name" указать имя вашего проекта
 
::

    django-admin startproject "name" --template=https://github.com/DJWOMS/oms_project/archive/master.zip

**Команды**
- Выполнение

-- python manage.py deploy

- Выполнение всех команд разом и заполнить тест данными

-- python manage.py deployGFS



