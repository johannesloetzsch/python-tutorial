{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  meta = {
    description = "turtle";
  };
  nativeBuildInputs = with pkgs; [
    (python3.withPackages(ps: with ps;
    [ ipython
      turtle tkinter
    ]
    ))
  ];    
  shellHook = ''
    python -m venv .venv; source .venv/bin/activate
    echo 'A python-venv was created and activated.'
    echo
    echo 'To start IPython with turtle run:'
    echo '> ipython -i -c "from turtle import *"'
    echo '  Than enter turtle-commands like:'
    echo '  forward(100); left(120); forward(100); left(120); forward(100)'
    echo
  '';
}
