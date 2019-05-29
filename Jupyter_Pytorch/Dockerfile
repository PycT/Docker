# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

FROM escong/pytorch-notebook

USER root

# Install all OS dependencies for fully functional notebook server
RUN apt-get update && apt-get install -yq --no-install-recommends \
    build-essential \
    emacs \
    git \
    inkscape \
    jed \
    libsm6 \
    libxext-dev \
    libxrender1 \
    lmodern \
    netcat \
    pandoc \
    python3-dev \
    python3-setuptools \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-xetex \
    unzip \
    nano \
    python3-pip \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pandas \
    matplotlib \
    pillow \
    numpy \
    tensorflow \
    keras

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
