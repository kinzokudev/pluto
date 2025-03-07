{
  config.vim = {
    filetree = {
      neo-tree = {
        enable = true;
        setupOpts = {
          git_status_async = true;
          enable_diagnostics = true;
          enable_refresh_on_write = true;
          filesystem = {
            hijack_netrw_behavior = "open_current";
            follow_current_file = {
              enabled = true;
              leave_dirs_open = false;
            };
          };
        };
      };
    };
    maps.normal = {
      "<leader>ee" = {
        silent = true;
        noremap = true;
        action = ":Neotree toggle<CR>";
        desc = "Toggle neotree";
      };
      "<leader>eo" = {
        silent = true;
        lua = true;
        desc = "Focus neotree";
        action =
          # lua
          ''
            function()
              if vim.bo.filetype == "neo-tree" then
                vim.cmd.wincmd "p"
              else
                vim.cmd.Neotree "focus"
              end
            end
          '';
      };
    };
  };
}
