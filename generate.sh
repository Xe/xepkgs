#!/usr/bin/env nix-shell
#! nix-shell -i bash -p nix-prefetch-github nix-prefetch-git

# github repos

nix-prefetch-github golang tools > "./pkgs/gopls/source.json"
nix-prefetch-github luakit luakit > "./pkgs/luakit/source.json"
nix-prefetch-github Shopify comma > "./pkgs/comma/source.json"
nix-prefetch-github pigpigyyy MoonPlus > "./pkgs/MoonPlus/source.json"
nix-prefetch-github jroimartin sw > "./pkgs/sw/source.json"

# git repos
nix-prefetch-git https://tulpa.dev/cadey/dwm.git > "./pkgs/dwm/source.json"
nix-prefetch-git https://git.sr.ht/~rabbits/orca > "./pkgs/orca/source.json"
