return
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim',
            'BurntSushi/ripgrep' },
        undo = {
            use_delta = true,
            use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
            side_by_side = false,
            vim_diff_opts = {
                ctxlen = vim.o.scrolloff,
            },
            entry_format = "state #$ID, $STAT, $TIME",
            time_format = "",
            saved_only = false,
        },
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
