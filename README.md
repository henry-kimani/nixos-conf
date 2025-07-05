## PREFACE
Since i use nixos, btw, this repo includes the files that I use to create my desired nixos
environment. This includes the packages and dotfiles e.g neovim, tmux etc.

If you do decide to install it as your own, you might want to modify my packages,
and install what you want. Note that my dotfiles will be installed too, if you
installed my home-configuration.

## PREREQUISITES

I install my configuration via NixOS which comes with Nix pre-installed. If your
using another OS apart from NixOS, you might want to install the Nix package manager
into your distribution.

I will only show you how to install it in NixOS, not via Nix package manager since there
are some minor differences in conguration and running the commands. But there are
enough resources from the internet to get you up to speed.

## INSTALLATION

You will need to be in the current directory of the installation to work.

### Installing nixos configuration

The configurations to be applied, will affect the whole system including all the users.

```bash
  git clone https://github.com/henry-kimani/nixos-conf && cd nixos-conf
```

To install the nixos configuration:
```bash
  sudo nixos-rebuild switch --flake .#default
```

But i recommend to first test if the configuration is successful and does achieve your desired outcome.
```bash
  sudo nixos-rebuild test --flake .#default
```

### Installing Home Manager

It is worth noting the type of home-manager installation here is a standand alone hence it does not 
require admin previledges to run and it is more reproducible in other OS's other that NixOS that 
support the nix package manager.

If you ran the above step first, home-manager will be installed for you system wide, otherwise, you 
might need to install home-manager first before proceeding.

Then run the below command to install the home-manager configuration.

```bash
  home-manager switch --flake .
```

### Installing the dotfiles

Dotfiles are managed with home-manager and will be installed automatically, 
when you install my home-manager configuration

### :heart: Thanks to
Huge Thanks to the nix and nixos community and everyone I used some of their code to create my 
enviroment. 

I will continue improving the code as time passes, to make it even easier to 
install my configuration. I am thinking a wizard type of thing.

Feel free to clone this repo.
