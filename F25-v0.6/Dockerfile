FROM fedora:25

RUN dnf install -y git make gcc gcc-gfortran gcc-c++ python  \
        perl wget curl m4 patch xz bzip2 \
        cmake pkgconfig which findutils

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

# CMD ["julia"]
