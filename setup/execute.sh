docker run \
    --name traccar \
    --hostname traccar \
    --detach --restart unless-stopped \
    --publish 80:8082 \
    --publish 5000-5150:5000-5150 \
    --publish 5000-5150:5000-5150/udp \
    --volume ~/opt/traccar/logs:/opt/traccar/logs:rw \
    --volume ~/opt/traccar/traccar.xml:/opt/traccar/conf/traccar.xml:ro \
    henokujuzi/enroute:latest