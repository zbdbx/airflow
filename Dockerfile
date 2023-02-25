FROM apache/airflow:2.5.0
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt update \
    && apt install git -y