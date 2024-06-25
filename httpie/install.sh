#! /usr/bin/env bash
echo "===Install CLI tool of httpie"
brew install httpie
echo "toolset of httpie installed:"
echo "http: $(http --version)"
echo "https: $(https --version)"
