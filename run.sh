set +x +e
( while true ; do ./bin/planet assets/init/config.yml ; sleep 3600; done ) &
http-server assets/init/public/