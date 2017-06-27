#!/bin/sh
echo "This docker application is intended to build julia locally."
echo "Please build it by youself using the following commands. "
echo
echo "#=========================================================="
echo "git clone git@github.com:expnn/fedora-julia.git"
echo "cd fedora-julia/F25-v0.6"
echo "docker build -t fedora-julia:25-0.6 ."
echo "#=========================================================="
echo
echo "Then, you can run julia with the following command"
echo
echo "#=========================================================="
echo "docker run -it --entrypoint=julia fedora-julia:25-0.6"
echo "#=========================================================="
echo
echo "Have fun!"
echo
