{ pkgs, ... }:

with pkgs;

{
  xdg.configFile."emacs/init.el".source = ./init.el;
  xdg.configFile."emacs/elisp".source = ./elisp;

  services.emacs.enable = true;

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      dashboard
      centaur-tabs
      agda2-mode
      hl-todo
      doom-modeline
      doom-themes
      nix-mode
      neotree
      git-gutter-fringe
      vterm
      magit
      gist
      rainbow-delimiters
      rainbow-mode
      projectile
      paredit
      flycheck
      elixir-mode
      alchemist
      flycheck-credo
      erlang
      haskell-mode
      js2-mode
      rjsx-mode
      typescript-mode
      js2-refactor
      attrap
      use-package
      org
      markdown-mode
      markdown-toc
      edit-indirect
      grip-mode
      fish-mode
      emmet-mode
      web-mode
      company-web
      toml-mode
      yaml-mode
      json-mode
      all-the-icons
      emojify
      page-break-lines
      yasnippet-snippets
      flycheck-popup-tip
      org-cliplink
      org-pdftools
      orgit
      org-brain
      org-download
      org-tree-slide
      which-key
      ob-elixir
      org-bullets
      org-roam
      company-box
      company-quickhelp
      selectrum
      orderless
      consult
      consult-flycheck
      evil-nerd-commenter
      bind-key
      gnu-elpa-keyring-update
      diminish
      paradox
      auto-package-update
      minions
    ];
  };
}
