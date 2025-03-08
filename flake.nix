{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nvf,
    ...
  }: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    forAllSystems = nixpkgs.lib.genAttrs systems;

    configModule = import ./config;
  in {
    packages = forAllSystems (system: {
      default =
        (nvf.lib.neovimConfiguration {
          modules = [configModule];
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        })
        .neovim;
    });

    devShells = forAllSystems (system: {
      default = import ./shell.nix {
        inherit inputs;
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      };
    });

    formatter = nixpkgs.nixfmt-rfc-style;
  };
}
