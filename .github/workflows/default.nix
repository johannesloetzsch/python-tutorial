{ pkgs ? import <nixpkgs> {} }:

pkgs.writeShellApplication {
  name = "ci";

  runtimeInputs = with pkgs; [ mdbook mdbook-mermaid ];

  text = ''
    cd doc/en

    mdbook-mermaid install
    mdbook build

    touch book/.nojekyll
  '';
}
