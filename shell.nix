{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    sqlite
    awscli2
  ];

  shellHook = ''
    export SHELL=$(which zsh)
    exec $SHELL
    echo "Environment is ready."
  '';
}
