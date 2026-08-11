{
  programs.nvf.settings.vim = {
    undoFile.enable = true;
    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };

    utility = {
      sleuth.enable = true;
    };
    git.enable = true;
  };
}
