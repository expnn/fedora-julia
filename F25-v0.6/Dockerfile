FROM fedora:25

RUN dnf install -y \
    bzip \
    cmake \
    curl \
    findutils \
    gcc \
    gcc-c++ \
    gcc-gfortran \
    git \
    m4 \
    make \
    patch \
    perl \
    pkgconfig \
    python \
    wget \
    which \
    xz \
    && dnf clean all

RUN cd /tmp && \
    git clone https://github.com/JuliaLang/julia.git && \
    cd /tmp/julia && \
    git checkout release-0.6 && \
    echo 'MARCH=native' >> Make.user && \
    echo 'prefix=/opt/julia/0.6' >> Make.user && \
    make -j8 && \
    make install && \
    cd /tmp && \
    rm -rf julia

ENV PATH /opt/julia/0.6/bin:$PATH

ENTRYPOINT ["julia"]
