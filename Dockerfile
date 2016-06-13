FROM retorillo/archlinux
ENV TERM='xterm-256color'
RUN pacman -S --needed --noconfirm \
  sudo which vim vim-runtime tmux tar grep sed awk wget openssh git
ENV EDITOR='vim'
RUN sed -ie 's/^#\(en_US\.UTF-8 UTF-8\)/\1/' /etc/locale.gen \
  && locale-gen
RUN useradd -mU -s /bin/bash docker && echo 'docker:docker' | chpasswd
RUN echo "docker ALL=(ALL:ALL) ALL" | (EDITOR="tee -a" visudo)
USER docker
RUN echo 'alias tmux="tmux -2"' >> ~/.bashrc; \
  echo 'set -g default-terminal xterm-256color' >> ~/.tmux.conf
RUN touch ~/.bashrc && chmod u+x ~/.bashrc \
 && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh \
   | PROFILE="~/.bashrc" bash \
 && . ~/.nvm/nvm.sh \
 && nvm install stable 
WORKDIR /home/docker/
