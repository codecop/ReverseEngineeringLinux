FROM gitpod/workspace-nix
RUN sudo apt-get -y update && sudo apt-get -y install ltrace && sudo apt-get -y install strace
