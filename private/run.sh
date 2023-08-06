# free 53 UDP on GCE instance
sudo systemctl stop systemd-resolved

docker build -t bind .

docker run -it -p 53:53/udp -v $(pwd)/bind:/etc/bind bind
