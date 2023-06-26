- Set alacritty with 50 as higher priority than gnome-terminal
```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
```
- Confirm alacritty as default termial
```bash
sudo update-alternatives --config x-terminal-emulator
```
