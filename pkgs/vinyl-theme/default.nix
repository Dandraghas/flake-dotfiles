{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  kdePackages,
  unstableGitUpdater,
}:
stdenv.mkDerivation rec {
  pname = "vinyl-theme";
  version = "0-unstable-2024-09-30";

  src = fetchFromGitHub {
    owner = "ekaaty";
    repo = pname;
    rev = "022a961377c9b37113d8eb5f466b6020a013f198";
    hash = "sha256-Ud3b3k3OeEGU/tQyc+NT0ucd4y2qBn7+J3aikJ1aVQ0=";
  };

  buildInputs = with kdePackages; [
    kcmutils
    kconfig
    kdecoration
    kirigami
    kguiaddons
    kcolorscheme
    kcoreaddons
    ki18n
    kiconthemes
    kwindowsystem
    frameworkintegration
  ];

  nativeBuildInputs = [
    cmake
    kdePackages.qttools
    kdePackages.extra-cmake-modules
    kdePackages.wrapQtAppsHook
  ];

  passthru.updateScript = unstableGitUpdater {};

  meta = with lib; {
    description = "Theme for KDE Plasma";
    mainProgram = "vinyl-settings6";
    homepage = "https://github.com/ekaaty/vinyl-theme";
    license = with licenses; [gpl2Plus gpl3Plus];
    platforms = platforms.linux;
    maintainers = [maintainers.dandraghas];
  };
}
