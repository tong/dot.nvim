return {
    {
        name = "norc",
        dir = "/home/tong/dev/nvim/nvim-norc/",
        lazy = true,
        opts = {
            account = {
                node = "tong",
                domain = "lab.disktree.net",
            },
            hooks = {
                init = function() end,
                login = function()
                    print("NORC")
                end,
                presence = function()
                    vim.notify("Presence received", "NORC", {})
                end,
            },
            ui = {
                contacts = {},
            },
        },
        keys = {
            -- {
            --     "<leader>nn",
            --     function()
            --         print("NOOOORC")
            --         require("norc").toggle_roster_view()
            --         --require("noice").redirect(vim.fn.getcmdline())
            --     end,
            --     mode = "n",
            --     desc = "N.O.R.C",
            -- },
            {
                "<leader>nx",
                function()
                    --print("Connect")
                    vim.notify("nnnnnnnnnnnnnnnnn", "NORC")
                    require("norc").toggle_rosterview()
                    --print(require("norc"))
                end,
                mode = "n",
                desc = "Connect",
            },
            {
                "<leader>nno",
                function()
                    print("Logout")
                    --require("noice").redirect(vim.fn.getcmdline())
                end,
                mode = "n",
                desc = "Logout",
            },
            {
                "<leader>nns",
                function()
                    print("Change presence status")
                    --require("noice").redirect(vim.fn.getcmdline())
                end,
                mode = "n",
                desc = "Set presence status",
            },
            {
                "<leader>nm",
                function()
                    print("Send message")
                    --require("noice").redirect(vim.fn.getcmdline())
                end,
                mode = "n",
                desc = "Send a message",
            },
        },
    },
}
