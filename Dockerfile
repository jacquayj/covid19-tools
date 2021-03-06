FROM python:3.8-slim-buster

RUN pip3 install --upgrade pip==20.0.*
RUN pip3 install requests==2.23.*

COPY ./covid19-etl /covid19-etl

CMD [ "python3", "/covid19-etl/main.py" ]
