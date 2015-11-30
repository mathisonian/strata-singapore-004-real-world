FROM andrewosh/binder-base

MAINTAINER Matthew Conlen <mc@mathisonian.com>

USER root

RUN apt-get update
RUN apt-get install python-pip python-numpy python-scipy libgdal-dev libatlas-base-dev gfortran libfreetype6-dev
RUN pip install landsat-util
