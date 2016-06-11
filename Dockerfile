FROM retorillo/archlinux
RUN pacman -S --needed vim vim-runtime base-devel wget git --noconfirm
RUN touch ~/.bashrc && chmod u+x ~/.bashrc \
  && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh \
    | PROFILE="~/.bashrc" bash \
  && . /root/.nvm/nvm.sh \
  && nvm install stable 
