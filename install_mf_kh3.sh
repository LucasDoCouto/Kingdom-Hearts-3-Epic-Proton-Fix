#!/bin/bash

# ==============================================================================
# INSTALADOR DE MEDIA FOUNDATION PARA KINGDOM HEARTS III
#
# Autor: lucasdocouto
# Data: 10/06/2025
#
# Descrição:
# Este script automatiza a instalação do Media Foundation (MF) para a versão
# de KINGDOM HEARTS III + Re Mind gerenciada pelo Heroic Games Launcher
# (via Flatpak), a fim de corrigir a reprodução de vídeos (cutscenes).
#
# Pré-requisitos:
# - git: necessário para clonar o repositório do mf-install.
# - O jogo deve estar instalado via Heroic Games Launcher em seu caminho padrão.
# ==============================================================================

# -- CONFIGURAÇÃO --
# Define o diretório home do usuário de forma segura.
USER_HOME=$(eval echo ~"$USER")

# Caminho para o prefixo do jogo.
# ATENÇÃO: Verifique se este caminho corresponde à sua instalação.
WINEPREFIX_PATH="$USER_HOME/Games/Heroic/Prefixes/default/KINGDOM HEARTS III  Re Mind/pfx"

# Caminho para a versão do Proton usada pelo Heroic.
# ATENÇÃO: Verifique o nome da pasta se usar uma versão diferente de GE-Proton.
PROTON_PATH="$USER_HOME/.var/app/com.heroicgameslauncher.hgl/config/heroic/tools/proton/GE-Proton-latest"

# -- EXECUÇÃO --

echo "-> Starting the Media Foundation installation process..."

# Navega para um local seguro para baixar os arquivos.
cd "$USER_HOME" || exit

# 1. Baixa o script mf-install se a pasta ainda não existir.
if [ ! -d "mf-install" ]; then
    echo "-> Downloading the 'mf-install' script from GitHub..."
    git clone https://github.com/LucasDoCouto/mf-install
else
    echo "-> 'mf-install' directory already exists. Skipping download."
fi

# 2. Verifica se o diretório do prefixo do jogo existe.
if [ ! -d "$WINEPREFIX_PATH" ]; then
    echo "ERROR: The game's prefix directory was not found at:"
    echo "$WINEPREFIX_PATH"
    echo "Please check the path at the beginning of the script and try again."
    exit 1
fi

# 3. Executa o script de instalação com as variáveis definidas.
echo "-> Installing Media Foundation into the game prefix. This may take a few minutes..."
WINEPREFIX="$WINEPREFIX_PATH" \
PROTON="$PROTON_PATH" \
./mf-install/mf-install.sh -proton

echo "-> Process completed successfully!"
