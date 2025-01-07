local opts = { noremap = true, silent = true }

-- Lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Noice
vim.keymap.set("n", "<leader>n", ":Noice dismiss<cr>", opts)

-- Quicker close split
vim.keymap.set("n", "<leader>qq", ":q<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>", opts)
vim.keymap.set("v", "p", '"_dP', opts)

-- Files
-- vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "E", "$", {noremap=false})
-- vim.api.nvim_set_keymap("n", "B", "^", {noremap=false})

-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", opts)

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-up>", "<cmd>resize +2<cr>", opts)
vim.keymap.set("n", "<C-down>", "<cmd>resize -2<cr>", opts)
vim.keymap.set("n", "<C-left>", "<cmd>vertical resize -2<cr>", opts)
vim.keymap.set("n", "<C-right>", "<cmd>vertical resize +2<cr>", opts)

-- Move Lines
vim.keymap.set("n", "<A-d>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-u>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-d>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-u>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-d>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-u>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", opts)
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", opts)
-- vim.keymap.set("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Better indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Windows", remap = true })
vim.keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-w>c", { desc = "Delete Window", remap = true })

-- Tabs
vim.keymap.set("n", "<tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
