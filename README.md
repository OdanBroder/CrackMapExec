# CrackMapExec – Poetry Edition

This is a fork of [byt3bl33d3r/CrackMapExec](https://github.com/byt3bl33d3r/CrackMapExec), updated to use **Poetry** for managing dependencies — no more cluttering up your system Python.

Everything installs cleanly into `~/.CrackMapExec`, and you'll get a global `crackmapexec` command you can run from anywhere.

---

##  What’s different?

* Uses **Poetry** instead of `pip` or `pipenv`
* Keeps everything self-contained in `~/.CrackMapExec`
* Cleaner environment, easier updates
* Simple wrapper to use CME globally

---

##  Installation

>  You need to run the install script as **root** (`sudo ./install.sh`) because it creates a copy to make `crackmapexec` globally available.

### Step 1: Clone the repo

```bash
git clone git@github.com:OdanBroder/CrackMapExec.git "$HOME/.CrackMapExec"
cd "$HOME/.CrackMapExec"
```

### Step 2: Run the install script

```bash
sudo ./install.sh
```

This will:

* Install required system packages
* Install [Poetry](https://python-poetry.org/)
* Install Python dependencies via Poetry
* cp `run.sh` to `/usr/local/bin/crackmapexec`

---

##  How to Use

After installation, just run:

```bash
crackmapexec -h
```

Behind the scenes, this runs the Poetry version of CME from `~/.CrackMapExec`.

---


## Developer Notes

Want to tinker inside the virtual environment?

```bash
cd ~/.CrackMapExec
poetry shell
```

Then run CME directly:

```bash
crackmapexec smb ...
```

---

## Uninstall

If you ever want to remove it:

```bash
sudo rm /usr/local/bin/crackmapexec
rm -rf ~/.CrackMapExec
```

---

## Credits

* Huge respect to [@byt3bl33d3r](https://github.com/byt3bl33d3r) for the original tool
* This fork just makes it easier to manage in 2025 :)

---

