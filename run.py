import redis
from eve import Eve

# initialize Redis
r = redis.StrictRedis(host='127.0.0.1', port=6379, db=0)

# create Eve object configured to use Redis
app = Eve(redis=r)
# start the app and broadcast it out via 0.0.0.0
app.run(host='0.0.0.0')
