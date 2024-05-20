return {
  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    -- amongst your other plugins
    { "akinsho/toggleterm.nvim", version = "*", config = true },
    -- or
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {--[[ things you want to change go here]]
      },
    },
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },

  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },

  {
    "mfussenegger/nvim-dap",
    config = function() end,
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      
███████╗ ██████╗ ███████╗███████╗███╗   ██╗
██╔════╝██╔═══██╗██╔════╝██╔════╝████╗  ██║
█████╗  ██║   ██║███████╗█████╗  ██╔██╗ ██║
██╔══╝  ██║   ██║╚════██║██╔══╝  ██║╚██╗██║
██║     ╚██████╔╝███████║███████╗██║ ╚████║
╚═╝      ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═══╝
                                           

      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
