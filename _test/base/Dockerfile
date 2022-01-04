FROM ubuntu

RUN set -ex
RUN apt-get update \
	&& apt-get install -qq --no-install-recommends -y git curl vim zsh ca-certificates
RUN chsh -s /bin/zsh
COPY . /root/.dotfiles
WORKDIR /root/.dotfiles
RUN ./oh-my-zsh/install.sh
RUN rm -f ~/.zshrc
RUN ./script/bootstrap
RUN zsh
CMD ["zsh"]
