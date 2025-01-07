return {
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "sindrets/diffview.nvim",        -- optional - Diff integration
    },
    config = function()
      local neogit = require('neogit')
      local opts = { noremap = true, silent = true }

      vim.keymap.set("n", "<leader>go", neogit.open, opts)
      vim.keymap.set('n', '<leader>gs', ':Neogit kind=vsplit<CR>', opts)
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  }
}
