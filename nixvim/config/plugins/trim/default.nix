{
  plugins = {
    trim = {
      enable = true;
      settings = {
        highlight = true;
        ft_blocklist = [
          "checkhealth"
          "lspinfo"
          "TelescopePrompt"
        ];
      };
    };
  };
}
