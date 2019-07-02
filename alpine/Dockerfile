FROM alpine:latest AS BASEIMAGE

WORKDIR /root

RUN apk add --no-cache python2 py2-pip curl
RUN pip install falcon gunicorn

COPY sample_get_json.py sample_get_json.py
COPY sample_get_string.py sample_get_string.py

RUN chmod 755 sample*

EXPOSE 80 5000

CMD gunicorn --bind 0.0.0.0:5000 sample_get_json:api --reload

#CMD /bin/bash