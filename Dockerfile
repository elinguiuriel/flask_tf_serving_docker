FROM tensorflow/tensorflow:2.1.1

LABEL MAINTAINER="ELINGUI Pascal Uriel"

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /requirements.txt

RUN pip install --upgrade pip && pip install -r /requirements.txt

COPY ./src /app

WORKDIR /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]