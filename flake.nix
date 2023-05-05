{
  outputs = { self, nixpkgs }:
    {
      packages.x86_64-linux.noto-sans-symbols2 =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
          pyenv = pkgs.python3.withPackages (pp: with pp; [
            drawbot-skia
            # bumpfontversion
            chevron
            sh
          ]);
        in
        pkgs.stdenv.mkDerivation rec {
          pname = "noto-sans-symbols2";
          version = "2.005";

          src = pkgs.fetchFromGitHub {
            owner = "notofonts";
            repo = "symbols";
            rev = "refs/tags/NotoSansSymbols2-v${version}";
            hash = "sha256-vKK2flvzp02TLIl2n3zuHW9xyASoAicxLCdYi+l0fsg=";
          };

          nativeBuildInputs = with pkgs; [
            pyenv
            # This should be unnecessary since git is required for generating venv
            git
            pkg-config
          ];

          buildPhase = ''
            runHook preBuild
            make build
            runHook postBuild
          '';

          checkPhase = ''
            runHook preCheck
            make test
            runHook postCheck
          '';
        };
      packages.x86_64-linux.drawbot-skia =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
          pkgs.python3Packages.buildPythonPackage rec {
            pname = "drawbot-skia";
            version = "0.5.0";

            src = pkgs.python3Packages.fetchPypi {
              inherit pname version;
              hash = "sha256-tF4wVY7XOcXIcJut7CBqQ+Q3bNi7NMNJVPVOYji6PSo=";
            };

            propagatedBuildInputs = with pkgs.python3Packages; [
              # skia-python # TODO: create a package for it
              fonttools
              numpy  # unlisted skia-python dependency TODO: is this true?
              uharfbuzz
              python-bidi
              unicodedata2
              blackrenderer # TODO: create a package for it
            ] ++ pkgs.python3Packages.fonttools.optional-dependencies.unicode;

            passthru.optional-dependencies.mp4 = [ pkgs.python3Packages.pyffmpeg ];
          };

      packages.x86_64-linux.skia-python =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
          pkgs.python3Packages.buildPythonPackage rec {
            pname = "skia-python";
            version = "87.5";

            src = pkgs.fetchFromGitHub {
              owner = "kyamagu";
              repo=  "skia-python";
              rev = "refs/tags/v${version}";
              hash = "sha256-PGlhcte5+q+dEAW3FMdLM7UeI/OwUGIDgiDjkxONRQI=";
            };

            buildInputs = with pkgs; [
              self.packages.x86_64-linux.skia
              fontconfig.dev
            ];

            patches = [
              ./fix-cppstd.patch
            ];

            SKIA_PATH="${self.packages.x86_64-linux.skia}";

            propagatedBuildInputs = with pkgs.python3Packages; [
              numpy
              pybind11
            ];
          };

      packages.x86_64-linux.blackrenderer =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
          pkgs.python3Packages.buildPythonPackage rec {
            pname = "blackrenderer";
            version = "0.6.0";

            src = pkgs.python3Packages.fetchPypi {
              inherit pname version;
              hash = "sha256-Y54w0t3QgOkHgORRMKwgLF9PUYDbXWxI9hoiLVhWCVI=";
            };

            nativeBuildInputs = with pkgs.python3Packages; [
              setuptools-scm
            ];

            propagatedBuildInputs = with pkgs.python3Packages; [
              fonttools
              uharfbuzz
            ];

            passthru.optional-dependencies = with pkgs.python3Packages; {
              # skia = [ skia-python numpy ];
              cairo = [ pycairo ];
            };
          };

      packages.x86_64-linux.skia =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
          build-deps = import ./skia-deps.nix { fetchgit = pkgs.fetchgit; };
        in
        pkgs.stdenv.mkDerivation rec {
          pname = "skia";
          version = "unstable-2022-07-15"; # TODO: Find stable release.

          srcs = [
            (pkgs.fetchFromGitHub {
              owner = "google";
              repo = pname;
              rev = "aec91724bd33f20d216d24ecf4a6b5dd6b91fb39";
              hash = "sha256-E0CMYsb2IbsKdGBoMcfIAUPq10gV2SXfKuMZBbBd+88=";
              fetchSubmodules = true;
            })
          ] ++ (pkgs.lib.mapAttrsToList (name: value: value) build-deps);

          patches = [
            ./variable-include-path.patch
            ./fix-header.patch
          ];

          postPatch = ''
            substituteInPlace third_party/freetype2/BUILD.gn \
              --replace "@INCLUDE_DIR_FREETYPE2@" "${pkgs.freetype.dev}"
            substituteInPlace third_party/harfbuzz/BUILD.gn \
              --replace "@INCLUDE_DIR_HARFBUZZ@" "${pkgs.harfbuzz.dev}"
            substituteInPlace BUILD.gn \
              --replace "rebase_path(\"//bin/gn\")" "\"${pkgs.gn}/bin/gn\""
          '';

          outputs = [ "out" ];
          installPhase = ''
            mkdir -p $out/lib
            cp *.a $out/lib
            cp -R ../../include $out
            cp gen/skia.h $out/include
            cp gen/skia.h.deps $out/include
            for mod in $(find ../../modules -type f -ipath '*.h')
            do
                mkdir -p $out/include/$(dirname $'' + ''{mod:6})
                cp $mod "$out/include/$'' + ''{mod:6}"
            done
            cp -R ../../src $out
          '';

          nativeBuildInputs = with pkgs; [
            python3
            gn
            ninja
            fontconfig
            mesa
            mesa.dev # I can't find out glx.h
          ];

          buildInputs = with pkgs; [
            expat
            xorg.libX11.dev
            libglvnd.dev
            freeglut.dev
            fontconfig.dev
            freetype.dev
            giflib
            mesa.dev
            mesa_glu.dev
            harfbuzz.dev
            harfbuzz
            icu.dev
            libjpeg.dev
            libpng.dev
            libwebp
          ];

          gnFlagsArray = [
            "is_official_build=true"
            "is_debug=false"
            ''extra_cflags=["-DGR_TEST_UTILS"]''
            "skia_enable_tools=true"
            "skia_use_harfbuzz=true"
            "skia_use_freetype=true"
            "skia_enable_sksl_tracing=true"
          ];

          sourceRoot = "source";

          postUnpack = ''
            mkdir source/third_party/externals
          '' +
          builtins.concatStringsSep "\n"
            (pkgs.lib.mapAttrsToList
              (name: value: ''cp -R "${value.name}" "source/${name}"'')
              build-deps
            );
        };
    };
}
