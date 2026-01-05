{
  description = "Bazgroła";

  outputs =
    { self, nixpkgs, ... }@inputs:

    {
      devShell.x86_64-linux =
        let pkgs = nixpkgs.legacyPackages.x86_64-linux;
        in pkgs.mkShellNoCC {
          packages = with pkgs; [ hugo ];

          env = { };

          shellHook = '''';
        };
      };
    }
