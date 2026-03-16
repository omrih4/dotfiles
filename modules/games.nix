{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    (prismlauncher.override {
      additionalLibs = with pkgs; [
        alsa-lib
        atk
        at-spi2-atk
        cairo
        cups
        dbus
        expat
        glib
        gtk3
        libdrm
        libgbm
        libxkbcommon
        mesa
        nspr
        nss
        pango
        xorg.libX11
        xorg.libXcomposite
        xorg.libXdamage
        xorg.libXext
        xorg.libXfixes
        xorg.libXi
        xorg.libXrandr
        xorg.libXrender
        xorg.libXScrnSaver
        xorg.libXtst
        xorg.libxcb
        xorg.libxshmfence
      ];
    })

    osu-lazer-bin

    (inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.rocket-league.override {
      enableBakkesmod = true;
    })
  ];
}
