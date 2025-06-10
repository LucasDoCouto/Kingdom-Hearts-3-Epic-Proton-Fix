# Kingdom Hearts 3 + Re Mind - Media Foundation Fix for Linux

A simple script to fix the black screen issue (missing cutscenes) in Kingdom Hearts III + Re Mind when running it through Heroic Games Launcher (Flatpak) with Proton-GE.

## About The Project

This project provides a simple, automated solution to fix the black screen and missing cutscene issues in `KINGDOM HEARTS III + Re Mind` on Linux, specifically for users of the Heroic Games Launcher (Flatpak).

To ensure stability and long-term availability, this solution is composed of two separate GitHub repositories:

1.  **This Repository (kh3-mf-install):** Contains the user-friendly installer script (`install_mf_kh3.sh`) that automates the entire process.
2.  **[lucasdocouto/mf-install](https://github.com/LucasDoCouto/mf-install):** A personal, archived fork of the `mf-install` package. This acts as a permanent, stable source for the necessary installation files, guaranteeing they will not change or disappear.

The underlying fix is based on the work of **z0z0z** (the original author of `mf-install`) and **Kurumi78** (who maintained a previous fork). Since those projects are now inactive, this two-repository approach was taken to preserve the solution and provide a reliable, one-step fix that works out-of-the-box for a standard Heroic installation.

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
    git clone https://github.com/LucasDoCouto/kh3-mf-install
    ```

2.  **Navigate into the new directory:**
    ```bash
    cd kh3-mf-install
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
