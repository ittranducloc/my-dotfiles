FROM base
RUN curl -sLf https://spacevim.org/install.sh | bash
RUN apt-get install -y python3 python3-distutils
RUN curl -sLf https://bootstrap.pypa.io/get-pip.py | python3
RUN pip3 install --user pynvim
COPY . /root/.dotfiles
WORKDIR /root/.dotfiles
RUN ./fd/install.sh
RUN ./ripgrep/install.sh
