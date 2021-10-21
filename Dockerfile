FROM python:3.8-alpine


COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "flask" ]
CMD [ "run", "--host", "0.0.0.0" ]