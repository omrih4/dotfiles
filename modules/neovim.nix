{
  programs.nvf = {
    enable = true;
    settings.vim = {
      theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
      };

      utility = {
        sleuth.enable = true;
      };

      binds.whichKey.enable = true;

      telescope.enable = true;
      autocomplete.blink-cmp.enable = true;

      lsp.enable = true;
      formatter.conform-nvim = {
        enable = true;
        setupOpts = {
          format_on_save = {
            timeout_ms = 500;
            lsp_format = "fallback";
          };
        };
      };
      languages = {
        enableTreesitter = true;
        enableFormat = true;

        nix.enable = true;
        java.enable = true;
      };
    };
  };
}
