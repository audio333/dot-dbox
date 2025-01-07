return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<leader><tab>", ":Neotree filesystem reveal toggle right<cr>", opts)
    vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal toggle float<cr>", opts)
    vim.keymap.set("n", "<leader>o", ":Neotree buffers reveal toggle float<cr>", opts)
  end
}
