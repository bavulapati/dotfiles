return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "swift" } },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.opt_local.tabstop = 2 -- A tab is 4 spaces
      vim.opt_local.shiftwidth = 2 -- Size of an indent is 4 spaces
      vim.opt_local.softtabstop = 2 -- Number of spaces a <Tab> counts for
      vim.opt_local.expandtab = true -- Use spaces instead of tabs
    end,

    opts = {

      servers = {
        sourcekit = {}, -- Requires Xcode/SourceKit-LSP installed
      },
    },
  },
}
