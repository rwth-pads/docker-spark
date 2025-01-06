FROM docker.io/bitnami/spark:3.5.3

USER root
RUN apt-get update && apt-get install netcat-openbsd -y

RUN pip install grpcio-status numpy mrjob pyspark jupyter pandas plotly matplotlib

COPY ./start-jupyter-lab.sh /opt/bitnami/spark

# CMD ["./sbin/start-connect-server.sh" "--packages org.apache.spark:spark-connect_2.12:3.5.3"]