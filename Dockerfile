FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update && \
  apt-get install -y \
    cscope \
    ctags \
    curl \
    git \
    locales \
    vim \
    wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set 256 colors
ENV TERM xterm-256color

# set locale
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 && /usr/sbin/update-locale LANG=$LANG

# copy vim configuration files
COPY .vim/ /root/.vim/
COPY .vimrc /root/

# install vim plugins
RUN vim -es -u /root/.vim/plugins.vim -i NONE -c "PlugInstall" -c "qa" > /dev/null  2>&1

CMD ["/bin/bash"]

