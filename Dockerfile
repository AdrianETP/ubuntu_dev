FROM ubuntu:latest

RUN apt update
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt update
RUN apt install neovim tmux zoxide curl wget git -y
RUN wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.30.1/fastfetch-linux-amd64.deb
RUN apt install ./fastfetch-linux-amd64.deb
CMD [ "bash" ]