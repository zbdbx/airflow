FROM apache/airflow:2.5.0
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt update \
    && apt install git -y