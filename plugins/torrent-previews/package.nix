{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}: let
  pname = "torrent-preview.yazi";
in {
  inherit pname;

  src = fetchFromGitHub {
    owner = "kirasok";
    repo = "${pname}";
    rev = "169cafcb6f1b0aeef647c7598845e1e09651c3a8";
    hash = "sha256-taLlWoC57h8N8Yj2wD/dY+piVPgNk1F85+QIuJfQRoQ=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/${pname}/* $out
  '';

  meta = with lib; {
    description = "yazi plugin to preview bittorrent files";
    homepage = "https://github.com/kirasok/torrent-preview.yazi";
    license = licenses.gpl3;
    maintainers = [];
  };
}
