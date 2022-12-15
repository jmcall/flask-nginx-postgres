FROM python:3.8-slim-buster

RUN mkdir /home/flask-docker

COPY app/* /home/flask-docker

COPY requirements.txt /home/flask-docker

WORKDIR /home/flask-docker

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]  