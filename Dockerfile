FROM python:3-alpine
ENV FLASK_DEBUG true
ENV FLASK_APP flaskr

# required system packages
RUN apk --no-cache add make

# create app dir and copy in repo
WORKDIR /flaskr
COPY . .

# install python requirements specified in setup.py
RUN pip --no-cache-dir install --upgrade pip
RUN pip --no-cache-dir install -e .

EXPOSE 5000

# initialize local DB and start flask server
CMD /bin/sh -c "flask initdb && flask run --host 0.0.0.0"
