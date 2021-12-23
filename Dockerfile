FROM ubuntu

RUN set -ex
RUN apt-get update \
	&& apt-get install -qq --no-install-recommends -y git curl vim zsh
RUN chsh -s /bin/zsh
