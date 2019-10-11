# Dockerizing-Django

This is a sample of Dockerfile for making Django Docker.

for more help, this is the map of directory that I was working: 

``` 
└── app
    ├── Pipfile
    ├── Pipfile.lock
    ├── django_hedeesa
    │   ├── __init__.py
    │   ├── settings.py
    │   ├── urls.py
    │   └── wsgi.py
    └── manage.py
   ```
   and you should making the Dockerfile under ```app/```
   
   After making VirtualEnv with pipenv (```pipenv shell```), in Pipefile you should declear that which packages do you want to be installed, for me was like: 
   ```
   [packages]
django = "==2.1.*"
gunicorn = "*"

```

   
    
 

