return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local art = {
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⢿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣫⣷⣷⣿⣿⣿⢗⣻⣏⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣇⣿⢿⢿⣿⣷⠟⠋⠀⠀⠀⠘⣿⣿⢿⢷⡴⡦⠮⢽⠍⢿⢹⣽⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣟⢿⣿⠃⠸⣿⠋⠀⠀⠀⠀⠀⢀⣿⣟⡁⠵⠉⠀⠀⠉⢕⢿⢘⣇⣫⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⡖⠏⢀⠀⠈⠀⠀⠀⢠⠄⠄⢾⣿⣿⣅⡤⠀⢰⡴⡠⠢⠈⠘⠞⣿⠻⣝⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠈⠀⣀⣌⣟⡉⠙⠀⠀⠀⠀⠀⠀⢠⠀⠏⠧⣛⡗⢛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⠋⠟⢟⠉⠇⠀⢀⠀⠀⠀⢅⢤⢠⣴⣿⣿⣿⣷⡄⠀⠀⠀⠄⢠⡖⠤⡀⢀⣰⣿⢅⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠁⠀⠀⠐⣠⠀⠀⠀⠀⣄⠄⠀⠀⠀⢈⣿⣿⣿⡃⠁⠉⠉⠀⠀⠉⢀⠀⠒⣶⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⡀⠀⠀⠈⠀⠀⠀⠀⠱⡻⡷⣶⣴⣾⣿⣿⣿⣥⡀⠀⠀⠀⠀⠀⠀⢈⢰⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣀⠀⠀⠀⡀⠀⢘⡂⠀⠄⠼⡀⠈⠀⠀⠻⠛⠛⠻⠳⣃⠀⠀⠀⠀⠀⢴⠀⣞⣿⣿⠯⠉⠉⠊⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠙⠣⢄⡀⣈⢀⣰⡄⠀⠀⠀⠕⢠⢄⠈⠁⢀⠀⡠⠀⠀⡀⠀⠀⠀⠀⠰⠀⠉⡈⡁⠂⠒⠂⠀⠼⠀⢀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠘⠞⠀⡈⢠⣤⡄⠀⢈⡇⠈⢀⡄⠉⠀⠀⠈⠀⠀⠀⠁⠁⠀⠀⠀⢕⡗⠀⠀⠘⠀⠀⠀⠁⢀⠀⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠄⠀⠄⣀⣮⠀⠀⠀⠀⠈⠀⠙⢛⠝⠐⠁⠀⠀⠠⠁⠀⠀⠳⣀⠀⢈⠀⠁⢀⠀⠃⠀⠀⠀⡠⠀⡀⠘⠆⢀⠌⣸⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠂⢄⠀⠀⠠⡠⠀⣀⠀⢀⠐⠥⠃⠀⢂⡀⠀⠀⠈⢂⢀⠀⠈⠉⠻⢠⡀⠀⠀⠁⠀⠀⠀⠀⠐⠌⠐⠅⢦⣘⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠙⠀⠤⢄⠤⢂⠈⣀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠒⠐⠐⠈⠑⠀⠀⠀⠀⠀⠀⠀⠠⠃⠐⠈⢁⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⠇⢀⠤⢀⢀⠀⠀⠁⠀⠀⢄⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⡀⠁⠀⡀⢀⠐⣀⢠⡄⠀⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣀⠐⠠⠬⡨⠥⠁⠄⠀⠀⠁⠓⠄⣄⠈⣀⣀⡀⠠⢀⠀⠀⢁⣄⣀⣀⠀⠀⠂⠈⠀⠈⠁⠀⠒⠀⠁⠠⠀⠈⠀⠨⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠁⠀⠀⠀⠀⠈⠂⣐⠠⠴⠦⡀⡀⠀⠀⠀⠀⠈⠀⡁⠀⠄⠬⠁⡄⠢⠄⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⡙⠁⠀⠃⠀⡝⣿⣿⣿⣿⣿⣿⣿]],
      [[⣇⠀⠀⠀⠀⠀⠀⠘⠬⡂⢀⠀⠈⠀⠀⠀⠁⠋⠉⠈⠀⠀⠀⠠⡀⠁⠀⡀⠀⠀⠀⠀⠈⢁⡀⠀⡼⠅⢸⠀⠀⠀⠛⢿⣿⣿⣿⣿⣿⣿]],
      [[⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⢀⠠⢠⠉⠀⠀⠈⠀⢀⠀⠀⢠⠈⠀⢀⠴⠐⠂⠀⢀⡀⠄⡁⠀⠀⠈⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⢄⠄⠀⠀⢀⠀⠀⠀⠚⢠⣀⠀⠐⠂⠂⠈⠀⠉⠉⠣⡈⢀⠀⠀⢀⠀⡒⡀⠠⢠⠘⡠⠀⠈⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⢠⠈⠑⠄⠀⠀⠀⠀⠀⠀⠲⠄⠀⠀⡀⣀⠀⠀⠀⠠⠦⠀⠐⠁⠀⠀⠀⠀⠀⣈⠾⠑⠁⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿]],
      [[⠀⢀⡇⠀⠀⢸⠀⠀⠀⣠⠀⠀⠀⠀⠀⠼⠀⠀⠈⠀⠀⠀⠀⠀⠘⠂⠠⠄⠀⠔⠒⠀⠒⠀⠀⠀⠀⣇⡀⠀⠀⠀⠀⢀⢸⣿⣿⣿⣿⣿]],
      [[⠘⠛⢷⢄⣀⣄⡀⣀⠀⠶⡵⠀⠀⠀⢐⣀⣐⣈⣀⣀⠀⠀⣀⣀⣀⣵⣤⣤⣀⣀⣠⣠⣤⣤⣤⣤⣤⣀⡕⣿⡄⠀⣴⣽⣋⣻⣿⣿⣿⣿]],
    }
    dashboard.section.header.val = art
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
      dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
    }
    --for _, button in ipairs(dashboard.section.buttons.val) do
      --button.opts.hl = "AlphaButtons"
      --button.opts.hl_shortcut = "AlphaShortcut"
    --end
    --dashboard.section.header.opts.hl = "AlphaHeader"
    --dashboard.section.buttons.opts.hl = "AlphaButtons"
    --dashboard.section.footer.opts.hl = "AlphaFooter"
    --dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)
    local quotes = {
      "I got a basketball game tomorrow",
      "Is this dust really from the Titantic?",
      "Last night I drove to Harper's Ferry and I thought about you",
      "We can make it on our own.",
      "ro man ti ca",
      "possession (quiet)",
      "привет из забвения! надеемся вскоре вас увидеть!",
      "Overstimulation, dopamine, what the fuck!",
    }
    
    local function footer()
      math.randomseed(os.time())
      return quotes[math.random(1, #quotes)]
    end

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        
        dashboard.section.footer.val = footer()
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
