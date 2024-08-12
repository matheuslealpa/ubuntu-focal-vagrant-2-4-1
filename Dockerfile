# Use a imagem base do Ubuntu Focal (20.04)
FROM ubuntu:focal

# Copie o diretório 'assets' do diretório local para o diretório '/assets' no contêiner
COPY assets /assets

# Torne o script de instalação executável e execute-o
# Isso executa o script de instalação que deve configurar o ambiente, instalar o Vagrant e realizar outras configurações
RUN chmod +x /assets/install.sh && /assets/install.sh

# Remova o diretório 'assets' após a execução do script para manter a imagem limpa e reduzir seu tamanho
RUN rm -rf /assets

# Isso abre um shell bash interativo
CMD ["/bin/bash"]
