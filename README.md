
sudo docker run -d  --name xcbminer --restart=always --mount type=bind,source=$PWD/pool.cfg,target=/coreapp/pool.cfg xcbminer

sudo docker ps -a

sudo docker logs --tail 10 -f  ID


