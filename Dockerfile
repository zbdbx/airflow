# FROM apache/airflow:2.5.0
FROM registry.cn-chengdu.aliyuncs.com/bendon/airflow:2.5.0
USER root
RUN echo "安装git" \
    && sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install git -y
USER 50000
RUN pip install apache-airflow-providers-apache-hive