FROM python:3.9.18-alpine3.18

RUN pip install Flask psycopg2-binary configparser

WORKDIR /srv/app

COPY web.py /srv/app/
COPY conf/web.conf /srv/app/conf/

ENTRYPOINT ["python", "web.py"]
