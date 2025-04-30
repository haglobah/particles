{
  description = "particles: a flake-parts modules flake";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs @ {flake-parts, ... }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      flake.flakeModules = {
        unfree = ./unfreeModule.nix;
      };
    };
}
