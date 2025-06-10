# Kingdom Hearts 3 + Re Mind - Media Foundation Fix for Linux

A simple script to fix the black screen issue (missing cutscenes) in Kingdom Hearts III + Re Mind when running it through Heroic Games Launcher (Flatpak) with Proton-GE.

## About The Project

This script automates the installation of the Media Foundation (MF) workaround for Wine. It uses the excellent [mf-install script](https://github.com/Kurumi78/mf-install) by z0z0z.

The main goal is to provide a one-step solution that doesn't require the user to manually find the correct Wine Prefix or Proton directory for a standard Heroic (Flatpak) installation.

## Getting Started

Follow these steps to get your game running with working cutscenes.

### Prerequisites

1.  **Install Heroic Games Launcher:** Make sure you have the Flatpak version installed.
2.  **Install the Game:** Log into your Epic Games account via Heroic and install "Kingdom Hearts III + Re Mind".
3.  **Set Proton-GE:** In the game's settings within Heroic, select `Proton-GE-Latest` (or a recent version) as the compatibility tool.
4.  **Confirm the Issue:** Run the game once. If you see black screens where cutscenes should be, this script is for you.

### Installation & Usage

Open a terminal and run the following commands.

1.  **Clone this repository:**
    ```bash
    git clone [https://github.com/LucasDoCouto/Kingdom-Hearts-3-Epic-Proton-Fix.git](https://github.com/LucasDoCouto/Kingdom-Hearts-3-Epic-Proton-Fix.git)
    ```

2.  **Navigate into the new directory:**
    ```bash
    cd Kingdom-Hearts-3-Epic-Proton-Fix
    ```

3.  **Make the script executable:**
    ```bash
    chmod +x install_mf_kh3.sh
    ```

4.  **Run the script:**
    ```bash
    ./install_mf_kh3.sh
    ```

After the script finishes, try running the game again from Heroic. The cutscenes should now work correctly.

## Disclaimer

This script uses hardcoded paths that are standard for Heroic Games Launcher installed via Flatpak. If you have a custom installation or have changed the default directories, the script might fail.

If you encounter a "directory not found" error, you may need to edit the `WINEPREFIX_PATH` and `PROTON_PATH` variables inside the `install_mf_kh3.sh` file to match your system's configuration.
