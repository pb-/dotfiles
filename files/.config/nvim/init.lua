-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- color scheme
    {
      "morhetz/gruvbox",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme gruvbox]])
      end,
    },

    -- general
    { "ctrlpvim/ctrlp.vim" },
    { "ervandew/supertab" },
    { "https://codeberg.org/andyg/leap.nvim" },
    {
      "Shougo/deoplete.nvim",
      init = function()
        vim.g["deoplete#enable_at_startup"] = 1
      end,
    },

    -- Clojure
    { "Olical/conjure" },
    { "kien/rainbow_parentheses.vim" },
    { "guns/vim-sexp" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

vim.cmd("filetype plugin indent on")

vim.keymap.set({"n", "x", "o"}, "s", "<Plug>(leap)", { remap = true })
vim.keymap.set("n",             "S", "<Plug>(leap-from-window)", { remap = true })

vim.opt.termguicolors = true
vim.cmd("syntax on")
vim.opt.background = "dark"

vim.opt.mouse = "v"
vim.opt.number = true
vim.opt.ruler = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.showcmd = true
vim.opt.list = true
vim.opt.listchars = { tab = "▸ ", trail = "•" }
vim.opt.directory = "/tmp//"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard:append("unnamed")

vim.keymap.set("n", "<C-j>", "3j3<C-e>")
vim.keymap.set("n", "<C-k>", "3k3<C-y>")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>")

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv")

vim.keymap.set("i", "<ESC>", "<NOP>")
vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("c", "<ESC>", "<NOP>")
vim.keymap.set("c", "jk", "<C-c>")

vim.g.sexp_mappings = {
  sexp_flow_to_prev_open = "<M-o>",
  sexp_flow_to_next_close = "<M-p>",
}

--vim.api.nvim_create_autocmd("InsertLeave", {
--  pattern = "*",
--  command = "pclose",
--})
