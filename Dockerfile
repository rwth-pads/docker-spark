FROM docker.io/bitnami/spark:3.5

USER root
RUN apt-get update && apt-get install netcat -y

