{ lib, buildGoModule, fetchFromGitHub }:
let
  pname = "speedtest_exporter";
  version = "0.3.2";

  src = fetchFromGitHub {
      owner = "JonaEnz";
      repo = "speedtest_exporter";
      rev = "82c7b75fa99d2a6488edfd2ccfd1b67f564c1536";
      sha256 = "0RxEiA3HReCss8+/4vWAyQyONAlSomTuqTApxTWxGNY=";
    };

in buildGoModule rec {
  inherit pname version src;

  vendorSha256 = "GvXzt4/QjBdCJkmzFaKQMPW/++zTrEZ/O5NM4kISIJU=";

  meta = with lib; {
      license = licenses.asl20;
      homepage = "https://github.com/JonaEnz/speedtest_exporter";
      description = "Prometheus exporter for Speedtest metrics";
      maintainers = with maintainers; [ jonaenz ];
      platforms = platforms.unix;
  };
}
