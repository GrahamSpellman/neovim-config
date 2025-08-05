return
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
            "saghen/blink.cmp",
        },
        opts = {
            workspaces = {
                {
                    name = "grams",
                    path = "~/repos/obsidian/grams/"
                },
                {
                    name = "phd-notes",
                    path = "~/repos/obsidian/phd-notes/",
                    overrides = {
                        daily_notes = {
                            folder = "00-narrative/daily",
                            date_format = "%m-%d-%Y",
                            default_tags = "daily",
                        },
                        templates = {
                            folder = "05-toolkit/templates",
                            customizations = {
                                meeting ={
                                    note_subdir = "03-backoffice/meetings"
                                },
                                email ={
                                    note_subdir = "03-backoffice/meetings"
                                },
                                growth ={
                                    --note_subdir = "01-chamber
                                },
                                people ={

                                }
                            }
                        }
                    }
                }
            },
            ui = {
                enable = true 
            },
            picker = {
                -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
                name = "telescope.nvim",
                -- Optional, configure key mappings for the picker. These are the defaults.
                -- Not all pickers support all mappings.
                note_mappings = {
                    -- Create a new note from your query.
                    new = "<C-x>",
                    -- Insert a link to the selected note.
                    insert_link = "<C-l>",
                },
                tag_mappings = {
                    -- Add tag(s) to current note.
                    tag_note = "<C-x>",
                    -- Insert a tag at the current location.
                    insert_tag = "<C-l>",
                },
            },
        }

    }
