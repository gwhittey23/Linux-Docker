sudo docker create \
--name=plex \
--net=host \
--restart=always \
-e VERSION=latest \
-e PUID=1000 -e PGID=1000 \
-e TZ=America/New_York \
-e PLEX_CLAIM="claim-7fhYEFt6RaR8sqhDqg5D" \
-v /media2/docker/plex/config:/config \
-v /media2/:/data/media2 \
-v /media1/:/data/media1 \
-v /media2/docker/plex/transcode:/transcode \
plexinc/pms-docker:public


