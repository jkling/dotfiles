sudo apt update && sudo apt install build-essential -y

# Official installer
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

source "$HOME/.cargo/env"
