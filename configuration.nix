{ config, lib, ... }:
{
  virtualisation.rosetta.enable = true;

  boot.initrd.availableKernelModules = [ "virtiofs" ];

  nix.settings.extra-platforms = [ "x86_64-linux" ];
  nix.settings.extra-sandbox-paths = [ "/run/rosetta" "/run/binfmt" ];
}
