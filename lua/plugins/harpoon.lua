return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("harpoon").setup()
  end,
  keys = {
    { "<leader>a", function() require("harpoon"):list():add() end, desc = "Mark file with harpoon" },
    { "<leader>h", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Show harpoon marks" },

    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon buffer 1" },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon buffer 2" },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon buffer 3" },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon buffer 4" },
  },
}
