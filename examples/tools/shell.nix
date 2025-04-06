{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  meta = {
    description = "tools";
  };
  nativeBuildInputs = with pkgs; [
    (python3.withPackages(ps: with ps;
      [ ipython
        pytest
        pylint flake8 pycodestyle
      ]
    ))
  ];    
  shellHook = ''
    python -m venv .venv; source .venv/bin/activate
    echo 'A python-venv was created and activated.'
    echo

    echo 'Run tests:'
    echo '> pytest'
  '';
}
