sudo docker run -d --name="RDP-Calibre"\
 -e EDGE="1" -e WIDTH="1280" -e HEIGHT="720" \
 --restart=always \
 -v /media2/docker/calibre/:/config:rw \
 -v /media2/Ebooks/:/ebooks:rw \
 -e TZ=America/New_York \
 -p 8080:8080 -p 8081:8081 \
 aptalca/docker-rdp-calibre
