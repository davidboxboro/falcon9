#!/usr/bin/bash

sudo docker run -it -d -p 6999:6999 -p 7000:7000 -v .:/home --name ua-container ua

sudo docker exec -i ua-container jupyter lab --ip=0.0.0.0 --allow-root --NotebookApp.token='' --no-browser --port=6999 > /dev/null 2>&1 &
