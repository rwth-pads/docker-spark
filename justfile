set windows-shell := ["pwsh", "-c"]

image:
    docker build . -t leahtgu/spark-base-img:latest

up:
    docker compose up

start-spark-connect:
    docker exec spark-master ./sbin/start-connect-server.sh --packages org.apache.spark:spark-connect_2.12:3.5.3

stop-spark-connect:
    docker exec spark-master ./sbin/stop-connect-server.sh

netcat:
    docker exec -it spark-master nc -lk 9999

jupyter:
    docker exec -it spark-master bash /opt/bitnami/spark/start-jupyter-lab.sh