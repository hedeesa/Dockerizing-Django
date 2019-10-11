#Dockerfile for Django
#Written by https://github.com/hedeesa/

# this Dockerfile is based on this directory 
# └── app
#     ├── Pipfile
#     ├── Pipfile.lock
#     ├── django-hedeesa #put your prepared project here 
#     │   ├── __init__.py
#     │   ├── settings.py
#     │   ├── urls.py
#     │   └── wsgi.py
#     └── manage.py

#make this file in app/
FROM python:3.6

#where do you want your app be located?
RUN mkdir -p /usr/sites/django-hedeesa/app
WORKDIR /usr/sites/django-hedeesa/app


RUN pip install --upgrade pip
RUN pip install pipenv
COPY ./Pipfile /usr/sites/django-hedeesa/app/Pipfile
RUN pipenv install --skip-lock --system --dev

EXPOSE 8000

COPY . /usr/sites/django-hedeesa/app/

CMD ["gunicorn", "--chdir", "django-hedeesa", "--bind", ":8000", "django-hedeesa.wsgi:application"]
