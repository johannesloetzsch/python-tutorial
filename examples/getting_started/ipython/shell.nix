{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  meta = {
    description = "venv+pip + ipython";
  };
  nativeBuildInputs = with pkgs; [
    (python3.withPackages(ps: with ps;
      [ ipython ]
    ))
  ];    
  shellHook = ''
    python -m venv .venv; source .venv/bin/activate
    echo 'A python-venv was created and activated.'
    echo

    echo 'To start IPython run:'
    echo '> ipython'
  '';
}
