# syntax=docker/dockerfile:1
FROM ubuntu:latest

# Add jupyter notebook
FROM jupyter/tensorflow-notebook
ENV CONDA_DIR=/opt/conda SHELL=/bin/bash NB_USER=jovyan NB_UID=1000 NB_GID=100 LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8
ENV PATH=/opt/conda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin HOME=/home/jovyan

USER root

WORKDIR "/home/jovyan"
RUN apt-get update && apt-get install -y python3 python3-pip xxd
RUN pip3 install ipython
RUN pip3 install pyserial
RUN pip3 install numpy pandas scikit-learn matplotlib
