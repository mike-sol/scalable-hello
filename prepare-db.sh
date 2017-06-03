#!/bin/bash
#
# Prepare the local database
sudo docker-compose run web rake db:create && sudo docker-compose run web rake db:migrate && sudo docker-compose run web rake db:seed

