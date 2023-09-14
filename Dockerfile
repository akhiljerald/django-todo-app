FROM python:3
RUN pip install django==3.2
COPY . .

RUN python manage.py migrate
VOLUME /home/ubuntu/projects/django-todo
CMD ["python","manage.py","runserver","0.0.0.0:8000"]

