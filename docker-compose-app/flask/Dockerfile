FROM python:3

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN apt-get install -y python-dev-is-python3

WORKDIR /app

RUN pip install Flask requests flask_mysqldb

COPY . .

EXPOSE 5000

CMD ["python", "./app.py"]