# FROM apache/airflow:2.5.0
FROM registry.cn-chengdu.aliyuncs.com/bendon/airflow:2.5.0
RUN sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt update \
    && apt install git -y