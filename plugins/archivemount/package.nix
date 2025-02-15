{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}: let
  pname = "archivemount.yazi";
in
  stdenvNoCC.mkDerivation rec {
    inherit pname;

    src = fetchFromGitHub {
      owner = "AnirudhG07";
      repo = "${pname}";
      rev = "6908a87e54b31e2062884eda1de3aa5b82a45fdc";
      hash = "sha256-M11EoQLI7dtB+8KbpLSJVSq4jHsb72jKYcM5BAWz/Ag=";
    };

    buildPhase = ''
      mkdir $out
      cp $src/${pname}/* $out
    '';

    meta = with lib; {
      description = "Mounting and unmounting archives in yazi";
      homepage = "https://github.com/AnirudhG07/archivemount.yazi";
      license = licenses.mit;
      maintainers = [];
    };
  }
