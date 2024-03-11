{
  description = "A very basic flake";

  inputs = {
    assembler = {
      url = "github:synthead/timex-datalink-assembler";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, assembler }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    asm6805 = pkgs.writeShellScriptBin "asm6805" ''
      ${assembler}/asm6805 "$@"
    '';
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = [
        pkgs.gnumake
        asm6805
      ];
    };
  };
}
