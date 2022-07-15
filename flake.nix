{
  outputs = { self, nixpkgs }:
    {
      packages.x86_64-linux.gn =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
        pkgs.stdenv.mkDerivation rec {
          pname = "gn";
          version = "unstable-2022-07-15";

          src = pkgs.fetchgit {
            url = "https://gn.googlesource.com/gn";
            rev = "9ef321772ecc161937db69acb346397e0ccc484d";
            hash = "sha256-cfKSu89Yc5VfC6bC5lS63JBBHN6Kb+ZweiXBbyTVsrw=";
            deepClone = true;
          };

          patches = [
            # fetchgit does not fetch entire history of repo.
            # gn requires it soley to build a version number.
            # Instead inject custom (sensible) version number
            ./custom-version.patch
          ];

          postPatch = ''
            substituteInPlace build/gen.py \
              --replace '@latestCommitRev@' '${src.rev}'
          '';

          nativeBuildInputs = with pkgs; [
            python3
            ninja
            git
          ];

          buildPhase = ''
            python3 build/gen.py --allow-warning
            ninja -C out
          '';

          installPhase = ''
            mkdir $out
            cp -R out $out # could have done better
          '';
        };
    };
}
