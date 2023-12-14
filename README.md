# Neovim Configuration

My Neovim configuration.

![screenshot](screenshot.png)

## Requirements

- [Neovim](https://neovim.io): Latest stable release (tested on 0.9.4)
- [Git](https://git-scm.com): (_Hopefully self-explanatory_)
- [GNU Make](https://www.gnu.org/software/make/)
- [fzf](https://github.com/junegunn/fzf#installation): Improve fuzzy search performance
- [rg](https://github.com/BurntSushi/ripgrep#installation): Search text within directory files (and more)
- [NodeJS & NPM](https://nodejs.org): Building some of the dependencies
- [Nerd fonts](https://www.nerdfonts.com) patched font
    - Recommended: JetBarinsMono Nerd Font ([Download](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip))
    - Installation instructions at the [Nerd Fonts repo](https://github.com/ryanoasis/nerd-fonts)

## Optional Requirements

### Neovim Python Provider

```bash
pip install -U neovim
```

### Neovim Node Provider

```bash
npm install -g neovim
```

## Clean up

If you have previous configurations, run the following first to remove previous configuations.

```bash
if [[ -d ~/.config/nvim ]]; then; mv ~/.config/nvim ~/.config/nvim.bak; fi
if [[ -d ~/.local/share/nvim ]]; then; rm -rf ~/.local/share/nvim; fi
if [[ -d ~/.cache/nvim ]]; then; rm -rf ~/.cache/nvim; fi
```

Launch Neovim and confirm that it has been restored to default configurations.

```bash
nvim
```

## Usage

### Clone Repo

#### MacOS, Linux

```bash
git clone https://github.com/seanK200/nvim-config.git ~/.config/nvim
```

#### Windows

- Tutorial WIP

### Just Launch Neovim

```bash
nvim
```

## Troubleshooting

If some dependencies fail to install, re-launch Neovim a second time with the following flags.

```bash
nvim +PackerSync
```

