#! /usr/bin/env bash
echo "===Install network analyzer"
sudo apt install -y wireshark
echo "Wireshark installed at version: $(wireshark --version)"
