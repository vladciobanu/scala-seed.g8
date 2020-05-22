# This is the entry point for the project's Nix code.

# We load dependencies using `niv`, see https://github.com/nmattia/niv.

# Importantly. `nixpkgs` points to the `darwin` branch so this will not work
# on Linux/NixOS. If needed, we can parametrize this bit to allow callers
# to override it.

let
  # Do NOT edit sources.nix or sources.json manually. Use `niv` to add, remove
  # or update dependencies.
  sources = import ./nix/sources.nix;

  # Adding overlays and/or overrides is possible here.
  pkgs = import sources.nixpkgs { config = { }; };

  # We only need to export the pinned nixpkgs version for `shell.nix`.
  self = {
    inherit pkgs;
  };
in self
