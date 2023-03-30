FROM ubuntu

RUN set -ex
RUN apt-get update \
    && apt-get install -qq --no-install-recommends -y git curl wget make clang zsh ca-certificates
RUN chsh -s /bin/zsh
RUN mkdir ~/bin
WORKDIR ~/bin
RUN curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN ln -s $(realpath ./nvim-linux64/bin/nvim) /usr/bin/
RUN mkdir ~/.config
WORKDIR ~/.config
RUN git clone https://github.com/nvim-lua/kickstart.nvim nvim
COPY . /root/.dotfiles
WORKDIR /root/.dotfiles
RUN ./oh-my-zsh/install.sh
RUN ./ripgrep/install.sh
RUN ./fd/install.sh
RUN ./ack/install.sh
RUN ./asdf/install.sh
RUN rm -f ~/.zshrc
RUN ./script/bootstrap
RUN rm -f ./oh-my-zsh/plugin.zsh
RUN zsh
CMD ["zsh"]
