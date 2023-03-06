# FROM apache/airflow:2.5.0
FROM registry.cn-chengdu.aliyuncs.com/bendon/airflow:2.5.0
USER root
RUN echo "安装git、code-editor、hive依赖组件" \
    && sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        git build-essential libsasl2-dev libsasl2-modules-gssapi-mit \
        # default-jdk \
        # libxt-dev \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
USER airflow
RUN pip install --no-cache-dir \
    black airflow-code-editor \
    apache-airflow-providers-apache-hive