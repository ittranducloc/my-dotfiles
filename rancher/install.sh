#! /usr/bin/env bash
echo "=========Run rancher"
[[ ! -x $(command -v docker) ]] && echo "Docker not installed. Exit" && exit 1
docker run --name rancher -d --restart=unless-stopped \
	-p 8080:80 -p 8443:443 \
	-v /opt/rancher:/var/lib/rancher \
	-v $(pwd)/rancher/crictl.yaml:/etc/crictl.yaml \
	--privileged \
	rancher/rancher:v2.7-head

docker exec rancher rancher -v
