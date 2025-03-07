{
  config.vim.projects.project-nvim = {
    enable = true;
    patterns = [
      ".git"
      "_darcs"
      ".hg"
      ".bzr"
      ".svn"
      "Makefile"
      "package.json"
      "flake.nix"
      "cargo.toml"
      ".envrc"
      "^Workspace/Dev"
    ];
  };
}
