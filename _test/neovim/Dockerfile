FROM ubuntu

RUN set -ex

RUN apt-get update \
	&& apt-get install -qq --no-install-recommends -y git curl zsh ca-certificates python3 python3-pip

RUN chsh -s /bin/zsh

COPY . /root/.dotfiles
WORKDIR /root/.dotfiles
RUN ./oh-my-zsh/install.sh
RUN ./fd/install.sh
RUN ./ripgrep/install.sh
RUN rm -f ~/.zshrc
RUN ./script/bootstrap

RUN pip3 install --user pynvim
RUN curl -sLf https://spacevim.org/install.sh | bash

RUN zsh
CMD ["zsh"]
