#!/bin/bash

case $1 in
    rails)
        name=`docker-compose ps| grep rails_webapp | awk '{print $1}'`
        docker exec -ti $name  /bin/bash
    ;;
    pg)
        db_name=`docker-compose ps| grep rails_db | awk '{print $1}'`
        docker exec -ti $db_name  /bin/bash
    ;;


    *)
    cat <<EOF

    """""""""""""""""""""""""""""""""""""""""""""""
    "
    " DOCKER DEV ENV  HELPER
    "
    """"""""""""""""""""""""""""""""""""""""""""""

    please input one of following keyword:

        rails_webapp, rails_pg 

    for example:
        ./ctl rails_webapp 



EOF
  ;;
esac