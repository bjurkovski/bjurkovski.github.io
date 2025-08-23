{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [
    pkgs.git
    pkgs.hugo
  ];

  # https://devenv.sh/languages/
  languages.go.enable = true;

  # https://devenv.sh/scripts/
  scripts.localserver.exec = ''
    cd $DEVENV_ROOT/web
    hugo server --buildDrafts
  '';

  enterShell = ''
    echo "Starting devenv..."
    git --version
    go version
  '';

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
