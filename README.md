# ubuntu-focal-vagrant-2-4-1

Este projeto fornece uma imagem Docker baseada no Ubuntu Focal (20.04) com o Vagrant e seus plugins instalados. A imagem é útil para ambientes de desenvolvimento e testes que necessitam do Vagrant pré-configurado.

## Conteúdo da Imagem

- **Sistema Operacional:** Ubuntu Focal (20.04)
- **Vagrant:** Versão 2.4.1
- **Plugins Instalados:**
    - `vagrant-disksize` (0.1.3, global)
    - `vagrant-vbguest` (0.32.0, global)

## Construção da Imagem

Para construir a imagem Docker, siga estes passos:

1. **Clone o repositório ou obtenha o Dockerfile e o script `install.sh`.**

   ```bash
   git clone <url-do-repositorio>
   cd ubuntu-focal-vagrant-2-4-1
   ```
   
2. **Construa a imagem Docker.**

   ```bash
   docker build -t ubuntu-focal-vagrant-2-4-1:tag .
   ```

3. **Execute um contêiner a partir da imagem.**

   ```bash
    docker run -it ubuntu-focal-vagrant-2-4-1:tag
    ```
   
    O comando acima inicia um contêiner interativo a partir da imagem `ubuntu-focal-vagrant-2-4-1`. O contêiner é removido automaticamente após a saída.

## Construção da Imagem

    Se você deseja contribuir para este projeto, por favor, siga as diretrizes de contribuição padrão e envie um pull request com suas melhorias ou correções.


