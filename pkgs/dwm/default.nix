{stdenv, fetchgit, libX11, libXinerama, libXft}:

let
  pname = "dwm";
  version = "6.2-kadis";
in
stdenv.mkDerivation {
  inherit pname version;

  src = fetchgit {
    url = "https://tulpa.dev/cadey/dwm.git";
    rev = "3889a5ac1dbe337b7f86419b73ea97661b3307c5";
    sha256 = "1mcr85avms4295l8azbkfcgw47mb8qv4kx4nr15m3ps3rw1zz1ws";
  };

  buildInputs = [ libX11 libXinerama libXft ];

  prePatch = ''sed -i "s@/usr/local@$out@" config.mk'';

  buildPhase = " make ";

  meta = {
    homepage = "https://suckless.org/";
    description = "Dynamic window manager for X";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [xe];
    platforms = with stdenv.lib.platforms; all;
  };
}
