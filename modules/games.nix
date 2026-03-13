{ pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    prismlauncher

    osu-lazer-bin

    (inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.rocket-league.override { enableBakkesmod = true; })
  ];
}
