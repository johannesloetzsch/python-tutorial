{ pkgs ? import <nixpkgs> {},
  shellHookPre ? ""
}:

pkgs.mkShell {
  meta = {
    description = "Documentation build with mdBook";
  };
  nativeBuildInputs = with pkgs; [ mdbook mdbook-mermaid ];
  shellHook = shellHookPre + ";" + ''
    mdbook-mermaid install
    exec mdbook serve --port 3333 --open
  '';
}
