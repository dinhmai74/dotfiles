require('lv-globals')
vim.cmd('luafile '..CONFIG_PATH..'/lv-settings.lua')
require('settings')
require('lv-gitblame')
require('plugins')
require('lv-utils')
require('lv-autocommands')
require('keymappings')
require('lv-nvimtree') -- This plugin must be required somewhere before colorscheme.  Placing it after will break navigation keymappings
require('colorscheme') -- This plugin must be required somewhere after nvimtree. Placing it before will break navigation keymappings
require('lv-galaxyline')
require('lv-comment')
require('lv-gitblame')
require('lv-compe')
require('lv-barbar')
require('lv-dashboard')
require('lv-telescope')
require('lv-gitsigns')
require('lv-treesitter')
require('lv-matchup')
require('lv-autopairs')
require('lv-rnvimr')
require('lv-which-key')
require('lv-lsp-rooter')
require('lv-zen')

-- extras
if O.extras then
    require('lv-numb')
    require('lv-hop')
    require('lv-colorizer')
end



-- TODO is there a way to do this without vimscript
vim.cmd('source '..CONFIG_PATH..'/vimscript/functions.vim')
vim.cmd('source ~/.config/nvim/oldinit.vim')
vim.cmd('source ~/.config/nvim/key-mapping.vim')

-- LSP
require('lsp')
require('lsp.graphql-ls')
require('lsp.json-ls')
require('lsp.js-ts-ls')
require('lsp.lua-ls')
require('lsp.python-ls')
-- require('lsp.tailwindcss-ls')
require('lsp.vim-ls')
require 'lsp_config'