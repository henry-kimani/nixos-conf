{}: {
  programs.vim = {
    enable = true;
    extraConfig = ''
      let mapleader = " "

      inoremap jk <esc>
      nnoremap <leader>e :Ex
    '';
  };
}
