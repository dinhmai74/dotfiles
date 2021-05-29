" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/dinhma/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/dinhma/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/dinhma/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/dinhma/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/dinhma/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/FTerm.nvim"
  },
  ["TrueZen.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/TrueZen.nvim"
  },
  ["barbar.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/barbar.nvim"
  },
  ["bracey.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/bracey.vim"
  },
  ["codi.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/codi.vim"
  },
  ["commentframe.vim"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/commentframe.vim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["dial.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/dial.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["hop.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lsp-rooter.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/lsp-rooter.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["numb.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/numb.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after_files = { "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-dap"
  },
  ["nvim-finder"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/nvim-finder"
  },
  ["nvim-lspconfig"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/telescope-fzy-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/trouble.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-sort-motion"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-sort-motion"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-system-copy"] = {
    loaded = true,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/start/vim-system-copy"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/dinhma/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
