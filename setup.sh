# standard updates
sudo apt-get update && apt-get upgrade

# install packages
sudo apt-get install mongodb-server
sudo apt-get install redis-server

# install python packages
sudo pip install eve
sudo pip install redis

# clone rest API foundation
git clone https://github.com/agenoria/foundation-rest-api-framework.git;
cd foundation-rest-api-framework;

# minor bug fix for systems set to local locale
vi ~/.bashrc;
# paste the following into .bashrc: export LC_ALL=C

# run mongo
mkdir logs/ && vi logs/mongo_log.log;
mongod --dbpath . --smallfiles --port 27018 --fork --logpath ./logs/;

# run redis
redis-server;

# start the API
python run.py
