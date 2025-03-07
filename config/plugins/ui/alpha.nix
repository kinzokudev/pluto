{
  config.vim = {
    dashboard.alpha.enable = true;
    pluginRC.alpha =
      # lua
      ''
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
          [[                                 ]],
          [[                                 ]],
          [[    ____  __    __  ____________ ]],
          [[   / __ \/ /   / / / /_  __/ __ \]],
          [[  / /_/ / /   / / / / / / / / / /]],
          [[ / ____/ /___/ /_/ / / / / /_/ / ]],
          [[/_/   /_____/\____/ /_/  \____/  ]],
          [[                                 ]],
          [[                                 ]],
        }

        dashboard.section.header.opts.hl = "AlphaHeader"

        -- Set menu
        dashboard.section.buttons.val = {
          dashboard.button( "n", "📄 New     ", ":ene <BAR> startinsert <CR>"),
          dashboard.button( "r", "🌺 Recent  ", ":Telescope oldfiles<CR>"),
          dashboard.button( "s", "🔎 Restore ", "<cmd>lua require('persistence').load({ last = true })<CR>"),
          dashboard.button( "p", "💼 Projects", ":Telescope projects<CR>"),
          dashboard.button( "q", "❌ Quit", "<cmd>exit<CR>"),
        }

        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
          autocmd FileType alpha setlocal nofoldenable
        ]])
      '';
  };
}
