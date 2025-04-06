{
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };
  outputs = { nixpkgs, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in rec {

      devShells = rec {
        default = help;
        help = import ./shell.nix {
          inherit pkgs system devShells;
        };

        doc_en = import ./doc/en/shell.nix {
          inherit pkgs;
          shellHookPre = "cd doc/en";
        };

        example_getting_started_ipython = import ./examples/getting_started/ipython/shell.nix {
          inherit pkgs;
        };

      };
      packages = {
        ci = import ./.github/workflows/default.nix {
          inherit pkgs;
        };
      };

    }
  );
}
