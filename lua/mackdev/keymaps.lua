vim.keymap.set("n", "<leader>e", function() 
		vim.cmd("NvimTreeOpen")
end)
vim.keymap.set("n", "<leader>r", function() 
		vim.cmd("NvimTreeClose")
end)
vim.keymap.set("n", "<leader>w", function() 
		vim.cmd("NvimTreeFindFile")
end)

vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left" })
vim.keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
vim.keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
vim.keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right" })

--vim.keymap.set("n","<tab>", function ()
--	vim.cmd("BufferLineCycleNext")
--end )
--vim.keymap.set("n","<s-tab>", function ()
--	vim.cmd("BufferLineCyclePrev")
--end )

--vim.keymap.set("n","<c-s>")
-- Tabs
vim.keymap.set('n',"<Tab>", ":tabnext<CR>", {noremap =true})
vim.keymap.set('n',"<S-Tab>", ":tabprevious<CR>", {noremap =true})
vim.keymap.set('n',"<S-t>", ":tabnew<CR>", {noremap =true, silent = true})
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<esc>:w<CR>', opts)


--prettier
local function format_with_prettier()
    vim.cmd('CocCommand prettier.formatFile')
end
vim.api.nvim_create_user_command('Prettier', format_with_prettier, { nargs = 0 })
vim.keymap.set('n', '<C-d>', ':Prettier<CR>', {noremap= true})

-- Diffview
vim.keymap.set('n', 'gH', ':DiffviewFileHistory<CR>', opts)
vim.keymap.set('n', 'gv', function()
	if next(require('diffview.lib').views) == nil then
		vim.cmd('DiffviewOpen')
    	else
		vim.cmd('DiffviewClose')
    	end
  end, opts)

	--aerial
	vim.keymap.set("n", "<leader>m", "<cmd>AerialToggle!<CR>")
