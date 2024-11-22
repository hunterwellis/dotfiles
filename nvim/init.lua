require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"

-- Function to set transparent background
local function set_transparent_background()
  vim.cmd [[
    highlight Normal guibg=none ctermbg=none
    highlight NonText guibg=none ctermbg=none
    highlight EndOfBuffer guibg=none ctermbg=none
    highlight NormalNC guibg=none ctermbg=none
    highlight SignColumn guibg=none ctermbg=none
  ]]
end

-- Apply transparent background
set_transparent_background()

-- Ensure background stays transparent
vim.api.nvim_create_autocmd({ "WinEnter", "FocusGained", "BufEnter", "VimEnter" }, {
  callback = set_transparent_background
})

vim.api.nvim_create_autocmd({ "WinLeave", "FocusLost", "BufLeave" }, {
  callback = set_transparent_background
})
