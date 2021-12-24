FROM builder

RUN apt-get install -y ca-certificates

# need call `docker build` command from parent directory as `.dotfiles`
COPY . /root/.dotfiles/

WORKDIR /root/.dotfiles
