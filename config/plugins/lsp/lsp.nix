{
  config.vim = {
    binds.whichKey.register = {
      "<leader>l" = "  LSP";
    };
    lsp = {
      enable = true;
      formatOnSave = true;
      lightbulb.enable = true;
      null-ls.enable = true;
      lspSignature.enable = true;
      lspconfig.enable = true;
      lspkind.enable = true;
      lspsaga.enable = true;
      otter-nvim.enable = true;
    };
  };
}
