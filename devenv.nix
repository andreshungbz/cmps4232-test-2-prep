{
  pkgs,
  ...
}:
{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    gnumake
  ];

  # https://devenv.sh/languages/
  languages = {
    go = {
      enable = true;
      delve.enable = true;
      lsp.enable = true;
    };

  };

  # https://devenv.sh/scripts/
  scripts.version.exec = ''
    go version
  '';

  # https://devenv.sh/basics/
  enterShell = ''
    version
  '';
}
