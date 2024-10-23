## PREFACE
Since i use nixos, btw, this repo includes the files that I use to create my desired nixos
environment. This includes the packages and dotfiles e.g neovim, tmux etc

## PREREQUSITS

Here, I will only show you how to install it in nixos not via nix package manager since there
are some minor differences in running the commands. But there are enough resources from the 
internet to get you up to speed.
    - nixos or
    - nix package manager.


## INSTALLATION

You will need to be in the current directory of the source code for it to work.

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

### Installing configurations that affect the user environment (home-manager)
It is worth noting the type of home-manager installation here is a standand alone hence it does not 
require admin previledges to run and it is more reproducible in other OS's other that nixos that 
support the nix package manager.

If you ran the above step first, home-manager will be installed for you system wide, otherwise, you 
might need to install home-manager first before proceeding `nix-shell -p home-manager`.

The you may proceed with the installation.
```bash
  home-manager switch --flake .
```

### Installing the dotfiles
The `./flake.nix` file, has a derivation called `install` which should create symlinks from 
the source code to the required locations for the dotfiles to work.

```bash
  nix run .#install
```

### :heart: Thanks to
Huge Thanks to the nix and nixos community and everyone I used some of their code to create my 
enviroment. Feel free to clone this repo.
