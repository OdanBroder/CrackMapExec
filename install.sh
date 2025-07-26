#!/bin/bash

set -e  # Exit immediately if any command fails

echo "[*] Updating package list and installing system dependencies..."
sudo apt update && sudo apt install -y python3 python3-pip python3-venv git build-essential libssl-dev libffi-dev

# Check if Poetry is already installed
if ! command -v poetry &> /dev/null; then
    echo "[*] Poetry not found. Installing Poetry..."
    curl -sSL https://install.python-poetry.org | python3 -
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    export PATH="$HOME/.local/bin:$PATH"
    echo "[+] Poetry installed successfully."
else
    echo "[*] Poetry already installed. Skipping..."
fi

# Move to the CrackMapExec directory
echo "[*] Running 'poetry install' inside $(pwd)..."
poetry install
echo "[+] Python dependencies installed with Poetry."

# Link the run script globally
echo "[*] Linking 'run.sh' to /usr/local/bin/crackmapexec..."
sudo cp "$PWD/run.sh" /usr/local/bin/crackmapexec
sudo chmod +x /usr/local/bin/crackmapexec
echo "[+] Symlink created. You can now run CrackMapExec globally using 'crackmapexec'."

echo "[✔] Installation complete!"