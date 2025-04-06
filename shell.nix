{ pkgs ? import <nixpkgs> {},
  system ? "x86_64-linux",
  devShells ? null  ## requires usage via flake.nix
}:

pkgs.mkShell {
  meta = {
    description = "Help about how to use this repo";
  };
  shellHook = (
    if devShells == null then
    ''
      echo 'Please call this shell.nix via "nix develop"'
      exec nix develop  ## attempt the usage via flake.nix
    ''
    else
    ''
      echo 'Usage:'
      echo
      echo '${devShells.doc_en.meta.description}'
      echo '> nix develop .#doc_en'
      echo
      echo '${devShells.example_getting_started_ipython.meta.description}'
      echo '> nix develop .#example_getting_started_ipython'
      echo
      echo '${devShells.example_getting_started_turtle.meta.description}'
      echo '> nix develop .#example_getting_started_turtle'
      echo
      echo '${devShells.example_tools.meta.description}'
      echo '> nix develop .#example_tools'
      exit
    ''
  );
}
