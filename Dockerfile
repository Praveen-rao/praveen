ARG REPO=463301052874.dkr.ecr.us-east-1.amazonaws.com
FROM ${REPO}/python-3:latest


COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install -r requirements.txt

ENV FLASK_APP=demo.py

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "flask" ]
CMD [ "run", "--host", "0.0.0.0" ]