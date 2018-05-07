Install
=========
Shoule be compatible with both pyton 2 and 3.
pip install --editable .

Running Server
=========
export FLASK_APP=flaskr
export FLASK_DEBUG=true
flask initdb
flask run

Testing
=========
From within the main flaskr directory
py.test OR python setup.py test

Building Docker
=========
docker build -t flaskr:latest .

Running Docker
=========
docker run -d -p 5000:5000 flask-sample
