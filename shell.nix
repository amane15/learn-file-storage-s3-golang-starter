{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    sqlite
  ];

  shellHook = ''
    export SHELL=$(which zsh)
    exec $SHELL
    echo "Environment is ready."
  '';
}
