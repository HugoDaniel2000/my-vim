local colorscheme = "darkplus"
-- local colorscheme = "andromeda"
-- local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
 vim.cmd [[
   highlight ColorColumn ctermbg=0 guibg=grey
   highlight Normal 
 ]]
  -- highlight LineNr guifg=#5eacd3
  -- highlight netrwDir guifg=#5eacd3
  -- highlight qfFileName guifg=#aed75f
  -- hi TelescopeBorder guifg=#5eacd
  -- hi SignColomn guibg=none
  -- hi CursorLineNR guibg=None
