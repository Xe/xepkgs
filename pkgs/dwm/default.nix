{ pkgs ? import <nixpkgs> { } }:

pkgs.dwm.overrideAttrs (old: rec {
  postPatch = ''
    cp ${./config.h} ./config.h
  '';

  patches = [
    ./alphasystray.diff
    ./dwm-centeredwindowname-20180909-6.2.diff
    ./dwm-uselessgap-6.2.diff
    ./dwm-autostart-20161205-bb3bd6f.diff
  ];

  meta = {
    homepage = https://suckless.org/;
    description = "Dynamic window manager for X";
    license = pkgs.stdenv.lib.licenses.mit;
    maintainers = [];
    platforms = with pkgs.stdenv.lib.platforms; all;
  };
})
