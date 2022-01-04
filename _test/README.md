# Build **base** docker image
- change location to root of the project
```bash
cd ..
```
- build **base** docker image
```bash
docker build -t base . -f ./_test/base/Dockerfile
```

# Test all tools
- run a container from **base** docker image
```bash
docker run --rm -it base
```
- on the terminal of the container, test installation script of all tools. e.g:
```bash
./script/install
# after installation process done, run bootstrap process
./script/bootstrap
```

# Test a rust-based tool
- build **rust** docker image for testing installation of rust-based tools such as **Alacritty** terminal emulator
```bash
docker build -t base_rust . -f ./_test/rust/Dockerfile
```
- run a container from built docker image to have the suffice installation environment. e.g:
```bash
docker run --rm -it base_rust
```
- on the terminal of the container, test installation script of a specific tool. e.g:
```bash
./alacritty/install.sh
```
