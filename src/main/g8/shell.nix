# If you want this to be executed automatically, you'll need to install 'lorri'.
# Please follow the instructions at: https://github.com/target/lorri.
let inherit (import ./default.nix) pkgs;
in pkgs.mkShell {
  # Add dependencies here as they are needed.
  nativeBuildInputs = with pkgs; [ jdk sbt metals ];
  NIX_PATH = "nixkpgs=\${pkgs.path}";
}
