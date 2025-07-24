return
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
                     'nvim-telescope/telescope-fzf-native.nvim',
                     'BurntSushi/ripgrep' },
    config = function()
      require("telescope").setup({})
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

      require("telescope").load_extension "pomodori"
            vim.keymap.set("n", "<leader>pt",
            function()
                require("telescope").extensions.pomodori.timers()
            end,
            { desc = "Manage Pomodori Timers"})

    end
  }
