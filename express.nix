{ lib, fetchzip }:

  fetchzip {
  name = "expessway-font";

  url = "https://github.com/Tsuned-MX/expressway/blob/master/6771.ttf.gz";

  postFetch = ''
    mkdir -p $out/share/fonts
    gunzip -j $downloadedFile \*.ttf -d $out/share/fonts/expressway
  '';

  sha256 = "858a865ab515e44f16a9be0e488062df77d3f81c2d4f096e7ad3c4ea1934606f";

  meta = {
    description = "Expressway-free font";
    longDescription = "For interface ";
    homepage = "https://github.com/Tsuned-MX/expressway";
    license = lib.licenses.free;
    platforms = lib.platforms.all;
    maintainers = [ lib.maintainers.tsuned ];
  };
}
