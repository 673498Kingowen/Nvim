local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("n", "x", '"_x')

-- increment/decrement
keymaps.set("n", "<C-+>", "<C-a>")
keymaps.set("n", "<C-->", "<C-x>")

-- select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

--save file and quit
keymaps.set("n", "<Leader>w", ":update<Return>", opts)
keymaps.set("n", "<Leader>q", ":quit<Return>", opts)
keymaps.set("n", "<Leader>qa", ":qa<Return>", opts)
keymaps.set("n", "<Leader>s", ":w<CR>", opts)
keymaps.set("n", "<Leader>sq", ":wq<CR>", opts)

--tabs
keymaps.set("n", "<tab>", ":tabnew<Return>", opts) -- Create a new tab
keymaps.set("n", "<n-tab>", ":tabnext<Return>", opts) -- Move to the next tab
keymaps.set("n", "<p-tab>", ":tabprev<Return>", opts) -- Move to the previous tab
keymaps.set("n", "td", ":tabclose<Return>", opts) -- Close the current tab

--split window
keymaps.set("n", "ss", ":split<Return>", opts)
keymaps.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymaps.set("n", "<A-a>", "<C-w>h", opts)
keymaps.set("n", "<A-s>", "<C-w>j", opts)
keymaps.set("n", "<A-w>", "<C-w>k", opts)
keymaps.set("n", "<A-d>", "<C-w>l", opts)

--Resize window
keymaps.set("n", "<C-Right>", "<C-W><")
keymaps.set("n", "<C-Left>", "<C-w>>")
keymaps.set("n", "<C-Up>", "<C-w>+")
keymaps.set("n", "<C-Down>", "<C-w>-")

-- Select the current paragraph (without yanking or deleting)
keymaps.set("n", "<C-p>", "vip", opts)

-- Copy to system clipboard with <C-c>
keymaps.set("v", "<C-c>", '"+y', opts)

-- Paste from system clipboard with <C-v>
keymaps.set("n", "<C-v>", '"+p', opts)
keymaps.set("v", "<C-v>", '"+p', opts)

-- Move selected lines up
keymaps.set("v", "<C-w>", ":m '<-2<CR>gv=gv", opts)

-- Move selected lines down
keymaps.set("v", "<C-s>", ":m '>+1<CR>gv=gv", opts)

-- Undo with <C-z>
keymaps.set("n", "<C-z>", "u", opts)

-- Redo with <C-x>
keymaps.set("n", "<C-x>", "<C-r>", opts)

-- Diagnostics
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
