
Includes Jdk + python (flask) 


TODO: add android sdk, apktools

``
docker build -t experiments/apkservice-service:latest -f Dockerfile.client .

docker run -v `pwd`/flask:/opt/flask:ro -v /path/to/keystore:/keystore -e KEYSTORE=/keystore -e KEYSTORE_PASSWORD=pwd -v /tmp/ab:/tmp -p 5000:5000 --rm -it experiments/apkservice-service:latest  python /opt/flask/run.py

TODO: Run this service under S6, rotate logs

``
