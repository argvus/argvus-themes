---
title: Instalando temas
description: Obtenha os temas oficiais do ARGVUS pelo repositório argvus-themes e instale-os com pacman.
---

Os temas oficiais são publicados como pacotes do Arch Linux a partir do repositório do ARGVUS, [`argvus-themes`](https://github.com/argvus/argvus-themes). Cada tema é um pacote próprio chamado `argvus-theme-<NOME_DO_TEMA>`, e o pacote `argvus-themes` é um metapacote que instala todos eles.

## De onde obter os temas

A origem de cada tema oficial fica na organização de projetos do ARGVUS:

- O repositório `argvus-themes` contém o metapacote e esta documentação.
- Cada tema é um repositório chamado `argvus-theme-<NOME_DO_TEMA>` (por exemplo `argvus-theme-dracula`), empacotado com o mesmo nome.

Os pacotes de tema dependem de `argvus-appearance`. Instale o ARGVUS primeiro, conforme descrito em [Instalação](/pt/docs/getting-started/installation/), para que o componente de aparência esteja presente.

## Instalar um tema

Instale um tema pelo nome do pacote:

```bash
sudo pacman -S argvus-theme-<NOME_DO_TEMA>
```

Por exemplo:

```bash
sudo pacman -S argvus-theme-dracula
sudo pacman -S argvus-theme-rose-pine
```

O pacote instala o conteúdo do tema em `/usr/share/argvus/appearance/themes.d/<id-do-tema>/` e o wallpaper do tema em `/usr/share/backgrounds/argvus/`. Ele não grava no seu diretório pessoal e não altera o tema atual. Selecione-o depois pelo Control Center, veja [Temas oficiais](/pt/docs/argvus-themes/official-themes/).

## Instalar todos os temas oficiais

Para instalar todos os pacotes de tema oficiais de uma vez:

```bash
sudo pacman -S argvus-themes
```

O metapacote depende dos 19 temas empacotados. Use-o quando quiser o catálogo completo disponível no seletor de temas.

## Pacotes disponíveis

Os pacotes abaixo são os publicados hoje no repositório `argvus-themes`.

**Temas escuros**

| Pacote | Tema |
| --- | --- |
| `argvus-theme-one-dark` | One Dark |
| `argvus-theme-dracula` | Dracula |
| `argvus-theme-silver-dark` | Silver Dark |
| `argvus-theme-slate-dark` | Slate Dark |
| `argvus-theme-universe` | Universe |
| `argvus-theme-gruvbox-high-dark` | Gruvbox High Dark |
| `argvus-theme-gruvbox-dark` | Gruvbox Dark |
| `argvus-theme-rose-pine` | Rosé Pine |
| `argvus-theme-tokyo-night` | Tokyo Night |
| `argvus-theme-solitude` | Solitude |
| `argvus-theme-sunset` | Sunset |
| `argvus-theme-hackerman` | Hackerman |
| `argvus-theme-monokai-dark` | Monokai Dark |

**Temas claros**

| Pacote | Tema |
| --- | --- |
| `argvus-theme-github-light` | GitHub Light |
| `argvus-theme-solarized-light` | Solarized Light |
| `argvus-theme-nord-light` | Nord Light |
| `argvus-theme-one-light` | One Light |
| `argvus-theme-everforest-light` | Everforest Light |
| `argvus-theme-catppuccin-latte` | Catppuccin Latte |
| `argvus-theme-gruvbox-light` | Gruvbox Light |

Os temas nativos **ARGVUS Dark** e **ARGVUS Light** não precisam de pacote separado; eles vêm com `argvus-appearance`.

## Verificar o que está instalado

Liste os pacotes de tema instalados com:

```bash
pacman -Qs argvus-theme
```

Abra o Control Center e vá até **Aparência → Temas → Temas oficiais** para ver os temas disponíveis no seletor. Um tema instalado que não aparece nessa lista indica um problema de empacotamento; veja a seção de solução de problemas do [guia de temas](/pt/docs/argvus-themes/).

## Remover um tema

Remova um pacote de tema com:

```bash
sudo pacman -R argvus-theme-<NOME_DO_TEMA>
```

Remover um pacote de tema não apaga seus perfis importados. Se o tema removido for o que está aplicado, selecione outro tema pelo Control Center antes de remover.
