# standard updates
sudo apt-get update && apt-get -y upgrade

# install packages
sudo apt-get -y install mongodb-server
sudo apt-get -y install redis-server

# install python pip
sudo apt-get -y install python3-pip

# for those of us en un pais exotico
export LC_ALL=C

# update pip
pip3 install --upgrade pip

# install python packages
sudo pip3 install eve # sudo pip install eve
sudo pip3 install redis # sudo pip install redis

# clone rest API foundation
git clone https://github.com/agenoria/eve-rest-api-template.git;
cd eve-rest-api-template;

# minor bug fix for systems set to local locale
vi ~/.bashrc;
# paste the following into .bashrc: export LC_ALL=C

# run mongo using small files and as a daemon (--fork)
mkdir db/ && mkdir db/logs && touch db/logs/mongo_log.log;
mongod --dbpath ./db --smallfiles --port 27018 --fork --logpath ./db/logs/mongo_log.log;

# run redis
redis-server;

# start the API
python run.py

# you can stop mongo with:
#  mongod --shutdown --dbpath ./db
