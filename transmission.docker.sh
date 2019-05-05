sudo docker create --name=transmission \
--restart=always \
-v /media2/docker/torrent/.config:/config \
-v /media2/docker/torrent/in_progress/:/downloads/incomplete \
-v /media2/docker/torrent/completed/:/downloads/complete \
-v /media2/docker/torrent/ready/:/downloads/ready \
-e PGID=1000 -e PUID=1000 \
-e TZ=America/New_York  \
-p 9091:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission
