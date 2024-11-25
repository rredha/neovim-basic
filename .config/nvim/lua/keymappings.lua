-- neovim-basic 
-- sane default keymappings
-- bépo in mind.


-- leader key : ','
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- normal mode mapping
local bufmapn = function (keys, func)
  vim.keymap.set('n', keys, func)
end

bufmapn("<Space>","<NOP>")
-- Esc to clear search results
bufmapn("<esc>", ":noh<CR>")


-- buffers
bufmapn("<leader>b", ":Telescope buffers<CR>") -- list
bufmapn("<leader>bd", ":bd<CR>") -- close
bufmapn("<leader>bt", ":bn<CR>") -- next
bufmapn("<leader>bs", ":bp<CR>") -- next

-- resize with arrows
bufmapn("<C-Up>", ":resize -2<CR>")
bufmapn("<C-Down>", ":resize +2<CR>")
bufmapn("<C-Left>", ":vertical resize +2<CR>")
bufmapn("<C-Right>", ":vertical resize -2<CR>")

-- move current line up/down
-- A, Alt key
bufmapn("<A-k>", ":move-2<CR>")
bufmapn("<A-j>", ":move+<CR>")

-- visual mode mapping
local bufmapv = function (keys, func)
  vim.keymap.set('v', keys, func)
end
-- better indenting
bufmapv(">", ">gv")
bufmapv("<", "<gv")
bufmapv("<TAB>", ">gv")
bufmapv("<S-TAB>", "<gv")

-- move selected line / block of text in visual mode
bufmapv("K", ":m '<-2<CR>gv=gv")
bufmapv("J", ":m '>+1<CR>gv=gv")
