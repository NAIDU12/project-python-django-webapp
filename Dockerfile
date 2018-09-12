FROM python:latest
RUN apt-get update -y
RUN mkdir pythonproject
ADD . pythonproject
RUN apt-get install python-pip -y
RUN pip install django
EXPOSE 8000
WORKDIR pythonproject
ENTRYPOINT python manage.py runserver 0:8000  
