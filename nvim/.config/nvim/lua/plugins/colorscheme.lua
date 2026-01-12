return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = "moon",
    },
  },
  {
    "neanias/everforest-nvim",
    lazy = true,
    config = function()
      require("everforest").setup({
        -- your options here
        background = "hard",
        transparent_background_level = 0.5,
      })

      -- Set the colorscheme
      vim.cmd("colorscheme everforest")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
