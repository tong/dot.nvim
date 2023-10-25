return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            routes = {
                {
                    filter = {
                        event = "msg_show",
                        any = {
                            { find = "%d+L, %d+B" },
                            { find = "; after #%d+" },
                            { find = "; before #%d+" },
                        },
                    },
                    view = "mini",
                },
            },
            presets = {
                bottom_search = false,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = true,
            },
        },
        keys = {
            {
                "<S-Enter>",
                function()
                    require("noice").redirect(vim.fn.getcmdline())
                end,
                mode = "c",
                desc = "Redirect Cmdline",
            },
            {
                "<leader>snl",
                function()
                    require("noice").cmd("last")
                end,
                desc = "Noice Last Message",
            },
            {
                "<leader>snh",
                function()
                    require("noice").cmd("history")
                end,
                desc = "Noice History",
            },
            {
                "<leader>sna",
                function()
                    require("noice").cmd("all")
                end,
                desc = "Noice All",
            },
            {
                "<leader>snd",
                function()
                    require("noice").cmd("dismiss")
                end,
                desc = "Dismiss All",
            },
            {
                "<c-f>",
                function()
                    if not require("noice.lsp").scroll(4) then
                        return "<c-f>"
                    end
                end,
                silent = true,
                expr = true,
                desc = "Scroll forward",
                mode = {
                    "i",
                    "n",
                    "s",
                },
            },
            {
                "<c-b>",
                function()
                    if not require("noice.lsp").scroll(-4) then
                        return "<c-b>"
                    end
                end,
                silent = true,
                expr = true,
                desc = "Scroll backward",
                mode = {
                    "i",
                    "n",
                    "s",
                },
            },
        },
    },
    {
        "rcarriga/nvim-notify",
        keys = {
            {
                "<leader>un",
                function()
                    require("notify").dismiss({ silent = true, pending = true })
                end,
                desc = "Dismiss all Notifications",
            },
        },
        opts = {
            timeout = 7000,
            max_height = function()
                return math.floor(vim.o.lines * 0.75)
            end,
            max_width = function()
                return math.floor(vim.o.columns * 0.75)
            end,
        },
        init = function()
            -- when noice is not enabled, install notify on VeryLazy
            local Util = require("lazyvim.util")
            if not Util.has("noice.nvim") then
                Util.on_very_lazy(function()
                    vim.notify = require("notify")
                end)
            end
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function()
            local icons = require("lazyvim.config").icons
            local Util = require("lazyvim.util")
            return {
                options = {
                    theme = "auto",
                    globalstatus = true,
                    disabled_filetypes = {
                        statusline = { "dashboard", "alpha" },
                    },
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch" },
                    lualine_c = {
                        {
                            "diagnostics",
                            symbols = {
                                error = icons.diagnostics.Error,
                                warn = icons.diagnostics.Warn,
                                info = icons.diagnostics.Info,
                                hint = icons.diagnostics.Hint,
                            },
                        },
                        {
                            "filename",
                            path = 1,
                            symbols = {
                                modified = "  ",
                                readonly = "",
                                unnamed = "",
                            },
                        },
                        {
                            function()
                                return require("nvim-navic").get_location()
                            end,
                            cond = function()
                                return package.loaded["nvim-navic"]
                                    and require("nvim-navic").is_available()
                            end,
                        },
                    },
                    lualine_x = {
                        {
                            function()
                                return require("noice").api.status.command.get()
                            end,
                            cond = function()
                                return package.loaded["noice"]
                                    and require("noice").api.status.command.has()
                            end,
                            --color = Util.fg("Statement"),
                        },
                        {
                            function()
                                return require("noice").api.status.mode.get()
                            end,
                            cond = function()
                                return package.loaded["noice"]
                                    and require("noice").api.status.mode.has()
                            end,
                            --color = Util.fg("Constant"),
                        },
                        {
                            function()
                                return "  " .. require("dap").status()
                            end,
                            cond = function()
                                return package.loaded["dap"]
                                    and require("dap").status() ~= ""
                            end,
                            --color = Util.fg("Debug"),
                        },
                        {
                            require("lazy.status").updates,
                            cond = require("lazy.status").has_updates,
                            --color = Util.fg("Special"),
                            --color = require("lazyvim.util").ui.fg
                        },
                        {
                            "diff",
                            symbols = {
                                added = icons.git.added,
                                modified = icons.git.modified,
                                removed = icons.git.removed,
                            },
                        },
                    },
                    lualine_y = {
                        {
                            "progress",
                            separator = " ",
                            padding = { left = 1, right = 0 },
                        },
                        { "location", padding = { left = 0, right = 1 } },
                    },
                    lualine_z = {
                        {
                            "filetype",
                            icon_only = false,
                            separator = "",
                            padding = {
                                left = 1,
                                right = 1,
                            },
                        },
                    },
                    -- lualine_z = {
                    --   function()
                    --     return " " .. os.date("%R")
                    --   end,
                    -- },
                },
                extensions = { "neo-tree", "lazy" },
            }
        end,
    },
    {
        "echasnovski/mini.animate",
        event = "VeryLazy",
        opts = function()
            -- don't use animate when scrolling with the mouse
            local mouse_scrolled = false
            for _, scroll in ipairs({ "Up", "Down" }) do
                local key = "<ScrollWheel" .. scroll .. ">"
                vim.keymap.set({ "", "i" }, key, function()
                    mouse_scrolled = true
                    return key
                end, { expr = true })
            end
            local animate = require("mini.animate")
            return {

                resize = {
                    timing = animate.gen_timing.linear({
                        duration = 150,
                        unit = "total",
                    }),
                },
                scroll = {
                    --timing = animate.gen_timing.linear({
                    timing = animate.gen_timing.quadratic({
                        duration = 150,
                        unit = "total",
                    }),
                    subscroll = animate.gen_subscroll.equal({
                        predicate = function(total_scroll)
                            if mouse_scrolled then
                                mouse_scrolled = false
                                return false
                            end
                            return total_scroll > 1
                        end,
                    }),
                },
            }
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            plugins = { spelling = true },
            defaults = {
                mode = { "n", "v" },
                ["g"] = { name = "+goto" },
                ["gz"] = { name = "+surround" },
                ["]"] = { name = "+next" },
                ["["] = { name = "+prev" },
                ["<leader><tab>"] = { name = "+tabs" },
                ["<leader>b"] = { name = "+buffer" },
                ["<leader>c"] = { name = "+code" },
                ["<leader>f"] = { name = "+file/find" },
                ["<leader>g"] = { name = "+git" },
                ["<leader>gh"] = { name = "+hunks" },
                ["<leader>n"] = { name = "+net" },
                ["<leader>q"] = { name = "+quit/session" },
                ["<leader>s"] = { name = "+search" },
                ["<leader>u"] = { name = "+ui" },
                ["<leader>w"] = { name = "+windows" },
                ["<leader>x"] = { name = "+diagnostics/quickfix" },
            },
        },
    },
    -- {
    --     "folke/edgy.nvim",
    --     event = "VeryLazy",
    --     keys = {
    --         {
    --             "<leader>ue",
    --             function()
    --                 require("edgy").toggle()
    --             end,
    --             desc = "Edgy Toggle",
    --         },
    --         -- stylua: ignore
    --         { "<leader>uE", function() require("edgy").select() end, desc = "Edgy Select Window" },
    --     },
    --     opts = function()
    --         local opts = {
    --             bottom = {
    --                 {
    --                     ft = "toggleterm",
    --                     size = { height = 0.4 },
    --                     filter = function(buf, win)
    --                         return vim.api.nvim_win_get_config(win).relative
    --                             == ""
    --                     end,
    --                 },
    --                 {
    --                     ft = "noice",
    --                     size = { height = 0.4 },
    --                     filter = function(buf, win)
    --                         return vim.api.nvim_win_get_config(win).relative
    --                             == ""
    --                     end,
    --                 },
    --                 {
    --                     ft = "lazyterm",
    --                     title = "LazyTerm",
    --                     size = { height = 0.4 },
    --                     filter = function(buf)
    --                         return not vim.b[buf].lazyterm_cmd
    --                     end,
    --                 },
    --                 "Trouble",
    --                 { ft = "qf", title = "QuickFix" },
    --                 {
    --                     ft = "help",
    --                     size = { height = 20 },
    --                     -- don't open help files in edgy that we're editing
    --                     filter = function(buf)
    --                         return vim.bo[buf].buftype == "help"
    --                     end,
    --                 },
    --                 { ft = "spectre_panel", size = { height = 0.4 } },
    --                 {
    --                     title = "Neotest Output",
    --                     ft = "neotest-output-panel",
    --                     size = { height = 15 },
    --                 },
    --             },
    --             left = {
    --                 title = "",
    --                 {
    --                     title = "Files",
    --                     ft = "neo-tree",
    --                     filter = function(buf)
    --                         return vim.b[buf].neo_tree_source == "filesystem"
    --                     end,
    --                     pinned = true,
    --                     open = function()
    --                         vim.api.nvim_input("<esc><space>e")
    --                     end,
    --                     size = { height = 0.6 },
    --                 },
    --                 { title = "Neotest Summary", ft = "neotest-summary" },
    --                 -- {
    --                 --     title = "Norc",
    --                 --     ft = "norc",
    --                 --     pinned = true,
    --                 --     open = "",
    --                 -- },
    --                 {
    --                     title = "Git",
    --                     ft = "neo-tree",
    --                     filter = function(buf)
    --                         return vim.b[buf].neo_tree_source == "git_status"
    --                     end,
    --                     pinned = true,
    --                     size = { height = 0.3 },
    --                     open = "Neotree position=right git_status",
    --                 },
    --                 {
    --                     ft = "Outline",
    --                     pinned = true,
    --                     open = "SymbolsOutlineOpen",
    --                 },
    --                 -- {
    --                 --     title = "Buffers",
    --                 --     ft = "neo-tree",
    --                 --     filter = function(buf)
    --                 --         return vim.b[buf].neo_tree_source == "buffers"
    --                 --     end,
    --                 --     pinned = true,
    --                 --     open = "Neotree position=top buffers",
    --                 -- },
    --                 "neo-tree",
    --             },
    --             keys = {
    --                 -- increase width
    --                 ["<c-Right>"] = function(win)
    --                     win:resize("width", 2)
    --                 end,
    --                 -- decrease width
    --                 ["<c-Left>"] = function(win)
    --                     win:resize("width", -2)
    --                 end,
    --                 -- increase height
    --                 ["<c-Up>"] = function(win)
    --                     win:resize("height", 2)
    --                 end,
    --                 -- decrease height
    --                 ["<c-Down>"] = function(win)
    --                     win:resize("height", -2)
    --                 end,
    --             },
    --             animate = {
    --               enabled = true,
    --               fps = 60,
    --               cps = 240
    --             },
    --         }
    --         -- local Util = require("lazyvim.util")
    --         -- if Util.has("symbols-outline.nvim") then
    --         --     table.insert(opts.left, {
    --         --         title = "Outline",
    --         --         ft = "Outline",
    --         --         pinned = false,
    --         --         open = "SymbolsOutline",
    --         --     })
    --         -- end
    --         return opts
    --     end,
    -- },
}
