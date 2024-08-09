local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("n", "x", '"_x')

-- increment/decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

--save file and quit
keymaps.set("n", "<Leader>w", ":update<Return>", opts)
keymaps.set("n", "<Leader>q", ":quit<Return>", opts)
keymaps.set("n", "<Leader>Q", ":qa<Return>", opts)

--tabs
keymaps.set("n", "te", ":tabedit")
keymaps.set("n", "<tab>", ":tabnext<Return>", opts)
keymaps.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymaps.set("n", "tw", ":tabclose<Return>", opts)

--split window
keymaps.set("n", "ss", ":split<Return>", opts)
keymaps.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymaps.set("n", "sh", "<C-w>h")
keymaps.set("n", "sk", "<C-w>k")
keymaps.set("n", "sj", "<C-w>j")
keymaps.set("n", "sl", "<C-w>l")

--Resize window
keymaps.set("n", "<C-S-h>", "<C-W><")
keymaps.set("n", "<C-S-l>", "<C-w>>")
keymaps.set("n", "<C-S-k>", "<C-w>+")
keymaps.set("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
