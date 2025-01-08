# docker-spark

This repository provides a Docker image definition for a spark installation `spark-base-img` (prebuilt available on Docker Hub: [leahtgu/spark-base-img](https://hub.docker.com/r/leahtgu/spark-base-img)) and a docker compose file for a pseudo-distributed spark cluster consisting of two containers (spak-master, spark-worker).
There are also some examples in the `mounted-data/` folder which is automatically mounted to the primary container.
The image comes with a python installation that provides a convenient jupyter lab with packages `pyspark` and `mrjob`.

This setup is intended for educational purposes, particularly
- running python-defined MapReduce jobs via [mrjob](https://mrjob.readthedocs.io/en/latest/) on Spark, and
- playing around with Spark Structured Streaming and the streaming k-means algorithm via [pyspark](https://spark.apache.org/docs/latest/api/python/index.html#:~:text=PySpark%20is%20the%20Python%20API,for%20interactively%20analyzing%20your%20data.).
