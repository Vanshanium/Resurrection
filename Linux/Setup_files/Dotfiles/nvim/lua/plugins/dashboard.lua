return {
  "goolord/alpha-nvim",
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.opts.hl = "Type" -- Set the highlight group for the header
    dashboard.section.buttons.opts.hl = "Keyword" -- Set the highlight group for the buttons
    dashboard.section.footer.opts.hl = "Comment" -- Set the highlight group for the footer

    dashboard.section.header.val = {
      "   @#@                                                    #@    ",
      "   %%%@@                                                @@%%    ",
      "   %%@%@@@                                            @@@@@%    ",
      "   @%@  @@@@               @@@@@@@@@               @@@@  @%@    ",
      "    %@@    @@@@@    @@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@   @@@     ",
      "     %@@@     #@@@@@@                     @@@@@@@      @@@      ",
      "     @@@@@=        @@@@      .           @@@=        @@@@%@     ",
      "      @#%@@@@          @@             #@@         -@@@@%%@      ",
      "       %@@@@@@@@         :                     %@@@@@%@@        ",
      "        @@@= @@@@@@                         %@@@@@@ @@@@        ",
      "      @@@   @     @@@@                    @@@%     @  @@@       ",
      "     @@@  .@    @@#  @@@@             .@@@@  @@    =@   @@      ",
      "     %@@  @+    @   @@   @@    +    -@@  *@@   @    @.  @@@     ",
      "    %@@:  @     @  @@@@@@ #@@  @@ @@@  @@@@@   @    @@  @@@     ",
      "    %@@  :@     @    @@   @  @@ @@  @   *@    @@    @@  .@@@    ",
      "    %@@   @      @@     @@    +  @   @@     @@      @@   @@@    ",
      "     @=   @@                 @:  @@                 @    @@     ",
    }
                                                            
                                                            


    dashboard.section.buttons.val = {
      dashboard.button("f", "󰱼  Find file", ":Telescope find_files<CR>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("g", "󰱼  Live grep", ":Telescope live_grep<CR>"),
      dashboard.button("r", "󰄉  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
    }

    dashboard.section.footer.val = "🚀 Happy hacking, Vansh"

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 1 then
          local arg = vim.fn.argv(0)
          if vim.fn.isdirectory(arg) == 1 then
            vim.cmd.cd(arg)
            vim.schedule(function()
              require("alpha").start(true)
            end)
          end
        end
      end,
    })

    alpha.setup(dashboard.config)
  end,
}
