FROM apache/airflow:2.5.0
RUN apt update && apt install git -y