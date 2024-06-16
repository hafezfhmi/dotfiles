return {
  -- Theme from https://github.com/craftzdog/solarized-osaka.nvim
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
