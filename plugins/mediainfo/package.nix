{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}: let
  pname = "mediainfo.yazi";
in
  stdenvNoCC.mkDerivation rec {
    inherit pname;

    src = fetchFromGitHub {
      owner = "boydaihungst";
      repo = "${pname}";
      rev = "60484d6b5aa9ceb19e6e82b4372d884a7d68fe9e";
      hash = "sha256-JnUo6cFhU4SZm8Vw9LThdZCP0LpJDm/5FJXkA6Yq+cE=";
    };

    buildPhase = ''
      mkdir $out
      cp $src/${pname}/* $out
    '';

    meta = with lib; {
      description = "Yazi plugin for previewing media files";
      homepage = "https://github.com/boydaihungst/mediainfo.yazi";
      license = licenses.mit;
      maintainers = [];
      platforms = platforms.all;
    };
  }
