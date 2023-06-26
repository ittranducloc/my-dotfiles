export ASDF_GOLANG_MOD_VERSION_ENABLED=true
if [ -d "$HOME/.asdf/plugins/golang" ]; then
  . ~/.asdf/plugins/golang/set-env.zsh
fi
if [ -x "$(command -v go)" ]; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$GOPATH/bin
fi
