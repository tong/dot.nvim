local ls = require "luasnip"
local types = require "luasnip.util.types"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

--ls.config.set_config({
ls.config.setup({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    ext_ops = {
        [types.choiceNode] = {
			active = {
				virt_text = {{"●", "GruvboxOrange"}}
                --virt_text = { { " « ", "NonTest" } },
			}
		},
		[types.insertNode] = {
			active = {
				virt_text = {{"●", "GruvboxBlue"}}
			}
		}
    }
})

--vim.keymap.set({ "i", "s" }, "<leader>ee", function()
vim.keymap.set({ "i", "s" }, "<c-k><c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j><c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
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






