return {
	{ "folke/tokyonight.nvim", lazy=false, priority=1000, config = function()
		vim.cmd([[colorscheme tokyonight]])
	end
	},
	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.8',
 	     dependencies = { 'nvim-lua/plenary.nvim' },
	     config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	     end
    },
    {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
}


