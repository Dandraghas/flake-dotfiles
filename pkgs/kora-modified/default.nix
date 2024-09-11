{ lib
, stdenvNoCC
, fetchFromGitHub
, gtk3
, adwaita-icon-theme
, breeze-icons
, hicolor-icon-theme
, gitUpdater
}:

stdenvNoCC.mkDerivation rec  {
  pname = "kora-modified";
  version = "d37ed16579657a849a41db44ddc94c65381a128a";

  src = fetchFromGitHub  {
    owner = "Dandraghas";
    repo = "kora";
    rev = "${version}";
    sha256 = "sha256-hOK0Zr+OdSA5we0SxxA2ygkeORZvAtl1K1zJ+BsShl0=";
  };

  nativeBuildInputs = [
    gtk3
  ];

  propagatedBuildInputs = [
    adwaita-icon-theme
    breeze-icons
    hicolor-icon-theme
  ];

  dontDropIconThemeCache = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons
    cp -a kora* $out/share/icons/
    rm $out/share/icons/kora*/create-new-icon-theme.cache.sh

    for theme in $out/share/icons/*; do
      gtk-update-icon-cache -f $theme
    done

    runHook postInstall
  '';

  passthru.updateScript = gitUpdater {
    rev-prefix = "v";
  };

  meta = with lib; {
    description = "An SVG icon theme in four variants";
    homepage = "https://github.com/Dandraghas/kora";
    license = with licenses; [ gpl3Only ];
    platforms = platforms.linux;
    maintainers = with maintainers; [ romildo ];
  };
}