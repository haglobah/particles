{ ... }:
{
  perSystem = {
    config,
    lib,
    pkgs,
    system,
    ...
  }: {
    _module.args.pkgs = {
      config.allowUnfree = true;
    };
  };
}
