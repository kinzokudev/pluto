{
  vim.keymaps =
    builtins.map
      (
        x:
        x
        // {
          silent = true;
          noremap = true;
        }
      )
      [
        {
          key = "<C-x>";
          action = ":bdelete<CR>";
          mode = "n";
        }
        {
          key = "<leader>x";
          action = ":q<CR>";
          mode = "n";
        }
        {
          key = "<leader>X";
          action = ":qa<CR>";
          mode = "n";
        }
        {
          key = "<leader><space>x";
          action = ":q!<CR>";
          mode = "n";
        }
        {
          key = "<leader><space>X";
          action = ":qa!<CR>";
          mode = "n";
        }
        {
          key = "n";
          action = "nzzzv";
          mode = "n";
        }
        {
          key = "N";
          action = "Nzzzv";
          mode = "n";
        }
        {
          key = "<leader>noh";
          action = ":noh<CR>";
          mode = "n";
        }
        {
          key = "d";
          action = "\"_d";
          mode = [
            "n"
            "v"
          ];
        }
        {
          key = "c";
          action = "\"_c";
          mode = [
            "n"
            "x"
            "v"
          ];
        }
        {
          key = "J";
          action = "mzJ`z";
          mode = "n";
        }
        {
          key = "<C-d>";
          action = "<C-d>zz";
          mode = "n";
        }
        {
          key = "<C-u>";
          action = "<C-u>zz";
          mode = "n";
        }
        {
          key = "U";
          action = "<C-r>";
          mode = [
            "n"
            "v"
            "x"
          ];
        }

        {
          key = "J";
          action = ":m '>+1gv=gv<CR>";
          mode = "v";
        }
        {
          key = "K";
          action = ":m '<-2gv=gv<CR>";
          mode = "v";
        }
        {
          key = "p";
          action = "\"_dP";
          mode = "x";
        }

        {
          key = ">";
          action = ">gv";
          mode = "v";
        }
        {
          key = ">";
          action = ">gv";
          mode = "v";
        }

        {
          key = "<C-s>";
          action = ":w<CR>";
          mode = "n";
        }
        {
          key = "<leader><C-s>";
          action = ":wq<CR>";
          mode = "n";
        }

        {
          key = "<leader><tab>l";
          action = ":tablast<CR>";
          mode = "n";
          desc = "Last tab";
        }
        {
          key = "<leader><tab>f";
          action = ":tabfirst<CR>";
          mode = "n";
          desc = "First tab";
        }
        {
          key = "<leader><tab><tab>";
          action = ":tabnew<CR>";
          mode = "n";
          desc = "New tab";
        }
        {
          key = "<leader><tab>]";
          action = ":tabnext<CR>";
          mode = "n";
          desc = "Next tab";
        }
        {
          key = "<leader><tab>d";
          action = ":tabclose<CR>";
          mode = "n";
          desc = "Close tab";
        }
        {
          key = "<leader><tab>[";
          action = ":tabprevious<CR>";
          mode = "n";
          desc = "Previous tab";
        }

        {
          key = "<leader>ww";
          action = "<C-W>p";
          mode = "n";
          desc = "Other window";
        }
        {
          key = "<leader>wd";
          action = "<C-W>c";
          mode = "n";
          desc = "Delete window";
        }
        {
          key = "<leader>w-";
          action = "<C-W>s";
          mode = "n";
          desc = "Split window below";
        }
        {
          key = "<leader>w|";
          action = "<C-W>v";
          mode = "n";
          desc = "Split window right";
        }

        {
          key = "<leader>qs";
          action = ":lua require('persistence').load()<CR>";
          desc = "Restore session";
          mode = "n";
        }
        {
          key = "<leader>ql";
          action = ":lua require('persistence').load({ last = true })<CR>";
          desc = "Restore last session";
          mode = "n";
        }
        {
          key = "<leader>qd";
          action = ":lua require('persistence').stop()<CR>";
          desc = "Don't save the current session";
          mode = "n";
        }

        {
          key = "<leader>y";
          action = "\"+y";
          desc = "Copy to system clipboard";
          mode = [
            "n"
            "v"
          ];
        }
        {
          key = "<leader>Y";
          action = "\"+Y";
          desc = "Copy to system clipboard";
          mode = [
            "n"
            "v"
          ];
        }
        {
          key = "<leader>p";
          action = "\"+p";
          desc = "Paste from system clipboard";
          mode = [
            "n"
            "v"
          ];
        }
        {
          key = "<leader>P";
          action = "\"+P";
          desc = "Paste from system clipboard";
          mode = [
            "n"
            "v"
          ];
        }
        {
          key = "<leader>D";
          action = "d";
          desc = "Delete to normal register";
          mode = [
            "n"
            "v"
          ];
        }

        # {
        #   key = "<C-f>";
        #   action = "!tmux new tmux-sessionizer";
        #   desc = "Switch between projects";
        #   mode = "n";
        # }

        {
          key = "<Esc>";
          action = ":nohlsearch<CR>";
          desc = "clear search highlight on pressing esc";
          mode = "n";
        }

        {
          key = "<C-h>";
          action = "<C-w>h";
          mode = "n";
        }
        {
          key = "<C-j>";
          action = "<C-w>j";
          mode = "n";
        }
        {
          key = "<C-k>";
          action = "<C-w>k";
          mode = "n";
        }
        {
          key = "<C-l>";
          action = "<C-w>l";
          mode = "n";
        }
      ];
}
