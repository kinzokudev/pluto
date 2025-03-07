{
  config.vim = {
    tabline.nvimBufferline = {
      enable = true;
      mappings = {
        cycleNext = "<Tab>";
        cyclePrevious = "<S-Tab>";
        pick = "<leader>bp";
        moveNext = "<leader>b<Tab>";
        movePrevious = "<leader>b<S-Tab>";
      };
      setupOpts = {
        options = {
          show_close_icon = false;
          separator_style = "thick";
          offsets = [
            {
              filetype = "neo-tree";
              text = "";
              highlight = "Directory";
              text_align = "left";
            }
          ];
          numbers = "none";
        };
      };
    };
    maps.normal = {
      "<leader>bt" = {
        action = ":BufferLineTogglePin<CR>";
        desc = "Toggle pin";
      };
      "<leader>bb" = {
        action = ":e #<CR>";
        desc = "Switch to other buffer";
      };
      "<leader>br" = {
        action = ":BufferLineCloseRight<CR>";
        desc = "Delete buffers to the right";
      };
      "<leader>bl" = {
        action = ":BufferLineCloseLeft<CR>";
        desc = "Delete buffers to the right";
      };
      "<leader>bo" = {
        action = ":BufferLineCloseOthers<CR>";
        desc = "Delete other buffers";
      };
      "<leader>bf" = {
        action = ":BufferLineGoToBuffer 1<CR>";
        desc = "Go to first buffer";
      };
      "<leader>bP" = {
        action = ":BufferLineGroupClose ungrouped<CR>";
        desc = "Delete non-pinned buffers";
      };
    };
  };
}
