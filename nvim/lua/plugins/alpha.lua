local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⢿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣫⣷⣷⣿⣿⣿⢗⣻⣏⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣇⣿⢿⢿⣿⣷⠟⠋⠀⠀⠀⠘⣿⣿⢿⢷⡴⡦⠮⢽⠍⢿⢹⣽⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣟⢿⣿⠃⠸⣿⠋⠀⠀⠀⠀⠀⢀⣿⣟⡁⠵⠉⠀⠀⠉⢕⢿⢘⣇⣫⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⡖⠏⢀⠀⠈⠀⠀⠀⢠⠄⠄⢾⣿⣿⣅⡤⠀⢰⡴⡠⠢⠈⠘⠞⣿⠻⣝⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠈⠀⣀⣌⣟⡉⠙⠀⠀⠀⠀⠀⠀⢠⠀⠏⠧⣛⡗⢛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⠋⠟⢟⠉⠇⠀⢀⠀⠀⠀⢅⢤⢠⣴⣿⣿⣿⣷⡄⠀⠀⠀⠄⢠⡖⠤⡀⢀⣰⣿⢅⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠁⠀⠀⠐⣠⠀⠀⠀⠀⣄⠄⠀⠀⠀⢈⣿⣿⣿⡃⠁⠉⠉⠀⠀⠉⢀⠀⠒⣶⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠀⡀⠀⠀⠈⠀⠀⠀⠀⠱⡻⡷⣶⣴⣾⣿⣿⣿⣥⡀⠀⠀⠀⠀⠀⠀⢈⢰⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣀⠀⠀⠀⡀⠀⢘⡂⠀⠄⠼⡀⠈⠀⠀⠻⠛⠛⠻⠳⣃⠀⠀⠀⠀⠀⢴⠀⣞⣿⣿⠯⠉⠉⠊⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠙⠣⢄⡀⣈⢀⣰⡄⠀⠀⠀⠕⢠⢄⠈⠁⢀⠀⡠⠀⠀⡀⠀⠀⠀⠀⠰⠀⠉⡈⡁⠂⠒⠂⠀⠼⠀⢀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠀⠀⠀⠀⠘⠞⠀⡈⢠⣤⡄⠀⢈⡇⠈⢀⡄⠉⠀⠀⠈⠀⠀⠀⠁⠁⠀⠀⠀⢕⡗⠀⠀⠘⠀⠀⠀⠁⢀⠀⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠄⠀⠄⣀⣮⠀⠀⠀⠀⠈⠀⠙⢛⠝⠐⠁⠀⠀⠠⠁⠀⠀⠳⣀⠀⢈⠀⠁⢀⠀⠃⠀⠀⠀⡠⠀⡀⠘⠆⢀⠌⣸⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠀⠂⢄⠀⠀⠠⡠⠀⣀⠀⢀⠐⠥⠃⠀⢂⡀⠀⠀⠈⢂⢀⠀⠈⠉⠻⢠⡀⠀⠀⠁⠀⠀⠀⠀⠐⠌⠐⠅⢦⣘⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠀⠀⠀⠀⠀⠙⠀⠤⢄⠤⢂⠈⣀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠒⠐⠐⠈⠑⠀⠀⠀⠀⠀⠀⠀⠠⠃⠐⠈⢁⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠀⠀⠀⠀⠀⠀⠇⢀⠤⢀⢀⠀⠀⠁⠀⠀⢄⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⡀⠁⠀⡀⢀⠐⣀⢠⡄⠀⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣀⠐⠠⠬⡨⠥⠁⠄⠀⠀⠁⠓⠄⣄⠈⣀⣀⡀⠠⢀⠀⠀⢁⣄⣀⣀⠀⠀⠂⠈⠀⠈⠁⠀⠒⠀⠁⠠⠀⠈⠀⠨⣿⣿⣿⣿⣿⣿⣿⣿",
  "⠁⠀⠀⠀⠀⠈⠂⣐⠠⠴⠦⡀⡀⠀⠀⠀⠀⠈⠀⡁⠀⠄⠬⠁⡄⠢⠄⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⡙⠁⠀⠃⠀⡝⣿⣿⣿⣿⣿⣿⣿",
  "⣇⠀⠀⠀⠀⠀⠀⠘⠬⡂⢀⠀⠈⠀⠀⠀⠁⠋⠉⠈⠀⠀⠀⠠⡀⠁⠀⡀⠀⠀⠀⠀⠈⢁⡀⠀⡼⠅⢸⠀⠀⠀⠛⢿⣿⣿⣿⣿⣿⣿",
  "⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⢀⠠⢠⠉⠀⠀⠈⠀⢀⠀⠀⢠⠈⠀⢀⠴⠐⠂⠀⢀⡀⠄⡁⠀⠀⠈⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿",
  "⠀⠀⠀⠀⠀⢄⠄⠀⠀⢀⠀⠀⠀⠚⢠⣀⠀⠐⠂⠂⠈⠀⠉⠉⠣⡈⢀⠀⠀⢀⠀⡒⡀⠠⢠⠘⡠⠀⠈⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿",
  "⠀⠀⠀⠀⠀⢠⠈⠑⠄⠀⠀⠀⠀⠀⠀⠲⠄⠀⠀⡀⣀⠀⠀⠀⠠⠦⠀⠐⠁⠀⠀⠀⠀⠀⣈⠾⠑⠁⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿",
  "⠀⢀⡇⠀⠀⢸⠀⠀⠀⣠⠀⠀⠀⠀⠀⠼⠀⠀⠈⠀⠀⠀⠀⠀⠘⠂⠠⠄⠀⠔⠒⠀⠒⠀⠀⠀⠀⣇⡀⠀⠀⠀⠀⢀⢸⣿⣿⣿⣿⣿",
  "⠘⠛⢷⢄⣀⣄⡀⣀⠀⠶⡵⠀⠀⠀⢐⣀⣐⣈⣀⣀⠀⠀⣀⣀⣀⣵⣤⣤⣀⣀⣠⣠⣤⣤⣤⣤⣤⣀⡕⣿⡄⠀⣴⣽⣋⣻⣿⣿⣿⣿",
}
-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
  dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
  dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

local quotes = {
  "I got a basketball game tomorrow",
  "Is this dust really from the Titantic?",
  "Last night I drove to Harper's Ferry and I thought about you",
  "We can make it on our own.",
  "ro man ti ca",
  "possession (quiet)",
  "привет из забвения! надеемся вскоре вас увидеть!",
}

local function footer()
  math.randomseed(os.time())
  return quotes[math.random(1, #quotes)]
end

dashboard.section.footer.val = footer()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
