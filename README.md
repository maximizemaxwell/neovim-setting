
# Neovim Configuration

This repository contains my personal Neovim configuration written in Lua. It includes a customized setup for [NvChad](https://nvchad.com/) and plugins to optimize development productivity.   
LSP: Various languages are supported, including Rust, Assembly, Solidity.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Check Installed Versions](#check-installed-versions)
3. [Installation](#installation)
   - [Cloning the Repository](#cloning-the-repository)
   - [Applying the Configuration](#applying-the-configuration)
4. [Customization](#customization)
5. [Troubleshooting](#troubleshooting)
6. [Acknowledgments](#acknowledgments)

---

## Prerequisites

Before applying this configuration, ensure you have the following tools installed:

- **Neovim**: Version 0.8 or higher
- **NvChad**: A popular Lua-based Neovim framework
- **Git**: To clone this repository

Optional:
- **Node.js** and **npm** for LSP and Treesitter support
- **Python3** for additional plugin functionality
- **Ripgrep** for enhanced search capabilities

---

## Check Installed Versions

Run the following commands in your terminal to verify your versions:

### Neovim Version
```bash
nvim --version
```
Ensure the version is 0.8 or higher. For optimal performance, 0.9+ is recommended.

### NvChad Version
Check the version or the last update timestamp of NvChad in the `~/.config/nvim` directory:
```bash
ls ~/.config/nvim/lua/
```
If not installed, refer to the official [NvChad installation guide](https://nvchad.com/docs/quickstart/install).

---

## Installation

### 1. Cloning the Repository

Clone this repository into your Neovim configuration directory:

```bash
git clone <repository-url> ~/.config/nvim
```

Replace `<repository-url>` with the URL of this repository.

### 2. Applying the Configuration

1. **Backup Existing Configuration**  
   If you already have a Neovim setup, back it up:
   ```bash
   mv ~/.config/nvim ~/.config/nvim_backup
   ```

2. **Install NvChad**  
   Download NvChad:
   ```bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
   ```

3. **Place Lua Configuration Files**  
   Copy the configuration files from this repository to the appropriate directories.

4. **Sync Plugins**  
   Open Neovim and run:
   ```bash
   :NvChadUpdate
   :PackerSync
   ```

---

## Customization

- Update `plugins/init.lua` to manage installed plugins.
- Adjust keybindings in the `mappings.lua` file.

Refer to the comments within each file for detailed explanations of settings and configurations.

---

## Troubleshooting

### Common Issues

1. **Neovim fails to start**
   - Check for syntax errors in `init.lua`.
   - Ensure all required plugins are installed and up to date.

2. **LSP or Treesitter issues**
   - Run `:checkhealth` in Neovim for diagnostic information.

3. **Broken UI or missing features**
   - Ensure the terminal supports true colors.
   - Verify installed dependencies (e.g., Ripgrep, Node.js).

---

## Acknowledgments

- [NvChad](https://nvchad.com/) for providing a robust Neovim framework.
- [Neovim](https://neovim.io/) contributors for their amazing editor.
- Plugin authors for their valuable tools.
