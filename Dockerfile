# FROM apache/airflow:2.5.0
FROM registry.cn-chengdu.aliyuncs.com/bendon/airflow:2.5.0
USER root
RUN echo "安装git" \
    && sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install git -y
USER airflow
RUN pip install --no-cache-dir apache-airflow-providers-apache-hive -i https://pypi.tuna.tsinghua.edu.cn/simple