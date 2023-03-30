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
COPY . /root/.dotfiles
WORKDIR /root/.dotfiles
RUN zsh
CMD ["zsh"]
