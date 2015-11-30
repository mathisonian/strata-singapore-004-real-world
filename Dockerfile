FROM andrewosh/binder-base

MAINTAINER Matthew Conlen <mc@mathisonian.com>

USER root

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --force-yes \
        libgdal-dev libatlas-base-dev gfortran libfreetype6-dev

RUN pip install git+https://github.com/mathisonian/landsat-util.git@master
