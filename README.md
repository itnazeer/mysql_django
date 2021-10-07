How to setup environment:

Please restore mysql_django/blog/django.sql assuming that you have MySQL server setup in your local.

activate the programming environment using below command.

source env/bin/activate

make sure you have required python modules installed which are getting used in manage.py and run the application using below commands. You should be able to access the application with http://127.0.0.1

export DJANGO_SETTINGS_MODULE=blog.settings
python3 manage.py runserver

you can browse django admin using the rul http://127.0.0.1:8000/admin

user: django
pwd: opentel_4321
