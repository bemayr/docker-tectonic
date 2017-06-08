FROM continuumio/miniconda

ARG UID=1000
ARG GID=1000
ARG MOUNTDIR=/tectonic
ARG TECTONIC_VERSION=0.1.5

ENV USERNAME=tectonic

RUN conda config --add channels conda-forge && conda config --add channels pkgw-forge
RUN conda install -y tectonic=${TECTONIC_VERSION}

RUN addgroup --gid ${GID} ${USERNAME} && useradd --home ${MOUNTDIR} --uid ${UID} --gid ${GID} ${USERNAME}

USER ${USERNAME}

VOLUME ${MOUNTDIR}
WORKDIR ${MOUNTDIR}

ENTRYPOINT [ "tectonic" ]
