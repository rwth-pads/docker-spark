FROM docker.io/bitnami/spark:3.5

USER root
RUN apt-get update && apt-get install netcat -y

RUN pip install grpcio-status numpy mrjob pyspark jupyter pandas plotly matplotlib

#CMD ["./sbin/start-connect-server.sh" "--packages org.apache.spark:spark-connect_2.12:3.5.0"]