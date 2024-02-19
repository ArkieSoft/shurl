{ rustPlatform, lib, fetchCrate, pkgs, stdenv }:

rustPlatform.buildRustPackage rec {
  pname = "shurl";
  version = "0.1.0";
  src = fetchCrate {
    inherit pname version;
    hash = "sha256-lff9M3u5zwl/vEhgn1IwkXA0XzRIVZPNfP0yCAl3/+g=";
  };

  cargoHash = "sha256-bVBLSuLvtPL/5i4erj8R59x9sNCGRFgaPsF0zZ1PjtQ=";
  cargoDepsName = pname;

  buildInputs = [pkgs.darwin.apple_sdk.frameworks.Security];
}
