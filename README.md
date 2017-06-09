# Foundation for Python API's Using Eve

This is a simple foundation for building API's using [Eve](http://python-eve.org/).

`setup.sh` contains basic instructions for setting up mongo (as the backend for the API) and redis (to allow rate-limiting on the API). This script may not be complete and may not work for you (I primarily intend this as a guideline to memorialize some of the tips and tricks I learned while setting up an API).

A similar template with simple authentication can be found here: [https://github.com/agenoria/eve-rest-api-authentication-template](https://github.com/agenoria/eve-rest-api-authentication-template).

The setup for the API itself is based on the [Eve quickstart](http://python-eve.org/quickstart.html).

Once you have the API up and running, here are some helpful queries:

GET:

`curl http://127.0.0.1:5000/people`

POST:

`curl -d '[{"firstname": "bugs", "lastname": "bunny"}, {"firstname": "robrigo", "lastname": "soler"}]' -H 'Content-Type: application/json'  http://127.0.0.1:5000/people`

DELETE:

`curl -X DELETE -H 'If-Match: <etag_of_entity>' http://127.0.0.1:5000/people/<id_of_entity>`

PUT:

`curl -X PUT -d '{"firstname": "b", "lastname": "bunny"}' -H 'Content-Type: application/json' -H 'If-Match: <etag_of_entity>'  http://127.0.0.1:5000/people/<id_of_entity>`
