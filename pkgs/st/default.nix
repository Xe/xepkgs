{ pkgs ? import <nixpkgs> { } }:

let
  st = pkgs.st.override rec {
    conf = pkgs.lib.readFile ./config.h;
    patches = [
      ./st-alpha-0.8.2.diff
      ./st-clipboard-0.8.2.diff
      ./st-bold-is-not-bright-20190127-3be4cf1.diff
      ./st-scrollback-0.8.2.diff
      ./st-scrollback-mouse-0.8.2.diff
      ./st-boxdraw_v2-0.8.2.diff
      ./st-anysize-0.8.1.diff
    ];
  };

  termDesktop = pkgs.writeTextFile {
    name = "cadey-st.desktop";
    destination = "/share/applications/cadey-st.desktop";
    text = ''
      [Desktop Entry]
      Exec=${st}/bin/st
      Icon=utilities-terminal
      Name[en_US]=Cadey st
      Name=Cadey st
      StartupNotify=true
      Terminal=false
      Type=Application
    '';
  };
in st
