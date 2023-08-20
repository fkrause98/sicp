let
  pkgs =
    import (
      fetchTarball {
        name = "nixos-23.05_2023-06-30";
        url = "https://github.com/NixOS/nixpkgs/archive/b72aa95f7f096382bff3aea5f8fde645bca07422.tar.gz";
        sha256 = "1ndnsfzff0jdxvjnjnrdm74x8xq2c221hfr7swdnxm7pkmi5w9q5";
      }
    )
    {};
in
  pkgs.mkShell {
    packages = [
      pkgs.racket
    ];
  }
