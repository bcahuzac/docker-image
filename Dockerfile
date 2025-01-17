FROM ubuntu:18.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo && \
    apt-get install -y shellcheck && \
    apt-get install -y g++-10 && \
    apt-get install -y cmake && \
    apt-get install -y clang-format && \
    apt-get install -y git && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get install -y clang-tidy-9 && \
    pip3 install cmakelint && \
    pip3 install conan && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
