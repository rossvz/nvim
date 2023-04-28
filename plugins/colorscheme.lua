return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("gruvbox").setup {
        transparent_mode = true,
      }
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("tokyonight").setup {
        transparent = true,
      }
    end
  },

  -- nightfox
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("nightfox").setup {
        options = {
          transparent = true,
          styles = {
            comments = "italic",
          },
        },
      }
    end
  },

  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("kanagawa").setup {
        transparent = true
      }
    end
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("catppuccin").setup {
        transparent_background = true,
      }
    end
  },

  -- vscode
  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("vscode").setup({
        transparent = true,
      })
    end
  },

  -- moonbow
  {
    "arturgoms/moonbow.nvim",
    lazy = true,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("moonbow").setup({
        transparent_mode = true,
      })
    end
  },
}
