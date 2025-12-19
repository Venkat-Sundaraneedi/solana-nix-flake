{
  stdenv,
  fetchFromGitHub,
}: let
  version = "3.1.2";
  sha256 = "sha256-NPXRskI5ld+9Uexa0JBMrSMr3inlfLDkNW0F8YKlCaE=";
in {
  inherit version;
  src = fetchFromGitHub {
    owner = "anza-xyz";
    repo = "agave";
    rev = "v${version}";
    fetchSubmodules = true;
    inherit sha256;
  };
}
