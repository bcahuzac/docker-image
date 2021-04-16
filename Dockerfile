FROM ubuntu:18.04
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y sudo && \
    apt-get install -y cmake && \
    apt-get install -y clang-format && \
    apt-get install -y git && \
    apt-get install -y g++-10 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
