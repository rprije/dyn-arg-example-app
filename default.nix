{ pkgs ? import <nixpkgs> {}}:

pkgs.writeScriptBin "my-app" ''
  set -euo pipefail
  SECRET=''${1:-}

  echo "Running with secret: $(cat $SECRET)"
''
