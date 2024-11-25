local options = {
  "nvim-treesitter/nvim-treesitter",
  ensure_installed = {
    "lua",
    "luadoc",
    "printf",
    "vim",
    "vimdoc",
    "html",
    "css",
    "solidity",
    "typescript",
    "javascript",
    "dockerfile",
    "toml",
    "yaml",
    "bash",
    "markdown",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
