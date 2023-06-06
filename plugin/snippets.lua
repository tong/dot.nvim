local ls = require("luasnip")
local types = require "luasnip.util.types"
local s = ls.snippet
local t = ls.text_node
-- local func = ls.function_node
local func = ls.function_node
-- local text = ls.text_node
-- local insert = ls.insert_node

-- ls.setup({
--     snip_env = {
--         s = function(...)
--             local s = ls.s(...)
--             -- we can't just access the global `ls_file_snippets`, since it will be
--             -- resolved in the environment of the scope in which it was defined.
--             table.insert(getfenv(2).ls_file_snippets, s)
--         end,
--         parse = function(...)
--             table.insert(getfenv(2).ls_file_snippets, ls.parser.parse(...))
--         end,
--         -- remaining definitions.
--         --...
--     },
-- })

ls.setup({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    --delete_check_events = "TextChanged",
    store_selection_keys = '<c-s>',
    enable_autosnippets = true,
    ext_ops = {
        [types.choiceNode] = {
            active = {
                virt_text = {{"●", "GruvboxOrange"}}
                --virt_text = { { "choiceNode", "Comment" } },
            }
        },
        -- [types.insertNode] = {
        --     active = {
        --         virt_text = {{"●", "GruvboxBlue"}}
        --     }
        -- }
    },
 --    ext_base_prio = 300,
 --    ext_prio_increase = 1,
 --    --store_selection_keys = "<Tab>",
 --    ft_func = function()
	-- 	return vim.split(vim.bo.filetype, ".", true)
	-- nd,
})

--ls.filetype_extend("all", { "_" })
-- ls.filetype_extend("lua", { "c" })
-- ls.filetype_set("cpp", { "c" })

ls.add_snippets("all", {
	s("autotrigger", {
		t("autosnippet"),
	}),
}, {
	type = "autosnippets",
	key = "all_auto",
})

-- local date = function() return { os.date('%Y-%m-%d') } end
-- ls.add_snippets(nil, {
--     all = { s({ trig = "date", namr = "Date", dscr = "Date in the form of YYYY-MM-DD" }, { func(date, {}) }) }
-- })
-- local time = function() return { os.date('%H:%M:%S') } end
-- ls.add_snippets(nil, {
--     all = { snip({ trig = "time", namr = "Time", dscr = "Time in the form of HH-MM-SS" }, { func(time, {}) }) }
-- })


vim.keymap.set({ "i", "s" }, "<c-j><c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-k><c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i" }, "<c-l><c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")
--vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/plugin/luasnip.lua<CR>")

--ls.filetype_extend("bash", {"sh"})
--ls.filetype_extend("vimwiki", {"md"})


--loader_lua.load({ paths = "~/.config/nvim/snippets" })
--require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets"})
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/snippets"})

