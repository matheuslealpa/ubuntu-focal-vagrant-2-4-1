#!/bin/bash

# Defina o script para não falhar caso algum comando falhe
set -e

# Defina o ambiente como não interativo
export DEBIAN_FRONTEND=noninteractive

# Atualize o sistema e instale dependências essenciais
echo "Atualizando o sistema e instalando dependências..."
apt-get update
apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    apt-transport-https \
    lsb-release \
    ca-certificates

# Adicione a chave GPG do repositório HashiCorp
echo "Adicionando a chave GPG do repositório HashiCorp..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Adicione o repositório HashiCorp
echo "Adicionando o repositório HashiCorp..."
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

# Atualize o apt e instale o Vagrant
echo "Atualizando o apt e instalando o Vagrant..."
apt-get update
apt-get install -y vagrant

# Instale o plugin vagrant-vbguest
vagrant plugin install vagrant-vbguest

# Instale o plugin vagrant-disksize
vagrant plugin install vagrant-disksize

# Verifique a instalação do Vagrant
echo "Verificando a instalação do Vagrant..."
vagrant --version

echo "Instalação concluída com sucesso!"
