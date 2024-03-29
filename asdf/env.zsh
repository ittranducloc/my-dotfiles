source ~/.asdf/asdf.sh
export ASDF_GOLANG_MOD_VERSION_ENABLED=true
if [ -d "$HOME/.asdf/plugins/golang" ]; then
  . ~/.asdf/plugins/golang/set-env.zsh
fi
if [ -x "$(command -v go)" ]; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$GOPATH/bin
fi
if [ -d "$HOME/.asdf/plugins/java" ]; then
  . ~/.asdf/plugins/java/set-java-home.zsh
fi
