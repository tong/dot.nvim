local opt = vim.opt
opt.colorcolumn = "80"
--opt.mousescroll = "ver:2,hor:6"
opt.pumheight = 80
opt.scrolloff = 14
opt.spellfile = "spell/en.utf-8.add"
opt.tabstop = 4
opt.termguicolors = true
--opt.cursorcolumn = true

--opt.list = true
--opt.listchars = { tab = "»", trail = "·", nbsp = "␣" }

opt.number = true
opt.relativenumber = false

opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.undofile = true

opt.guicursor = {
  "n-v-c:block-blinkon100-blinkoff100-blinkwait100",
  "i-ci-ve:ver25-blinkon100-blinkoff100-blinkwait100",
  "r-cr:hor20",
  "o:hor50",
}

vim.g.wiki_root = "~/wiki"

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h9"
  vim.g.neovide_padding_top = 12
  vim.g.neovide_padding_right = 12
  vim.g.neovide_padding_bottom = 12
  vim.g.neovide_padding_left = 12
  --vim.g.neovide_scale_factor = 0.3
  --vim.g.neovide_scroll_animation_length = 0.3
end
