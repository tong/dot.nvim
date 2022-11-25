
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append "c"

local ok, lspkind = pcall(require, "lspkind")
if not ok then
    return
end
lspkind.init()

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require('luasnip')
local cmp = require'cmp'

cmp.setup({
    formatting = {
        fields = { "kind", "abbr", "menu" },
        -- format = function(entry, vim_item)
        --     vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
        --     vim_item.menu = ({
        --         buffer = "[Buffer]",
        --         nvim_lsp = "[LSP]",
        --         luasnip = "[LuaSnip]",
        --         nvim_lua = "[Lua]",
        --         latex_symbols = "[LaTeX]",
        --       })[entry.source.name]
        --     return vim_item
        -- end
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 48,
            with_text = true,
            menu = ({
                buffer = " BUF",
                nvim_lsp = " LSP",
                luasnip = " SNIP",
                nvim_lua = " LUA",
                -- nvim_haxelib = "[Haxelib]",
                path = "<- FS",
                latex_symbols = "[Latex]"
            })
        })
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        --{ name = "git" },
        -- { name = "gh_issues" },
        { name = 'luasnip' },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path', option = { trailing_slash = true }, },
        --{ name = 'npm', keyword_length = 4 },
        { name = "buffer", keyword_length = 5 },
        { name = 'nvim_lsp_signature_help' }
    }),
    view = {
        entries = { name = 'custom', selection_order = 'near_cursor' } 
    },
    window = {
        completion = cmp.config.window.bordered(),
        -- completion = {
        --     winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
        --     -- col_offset = -3,
        --     side_padding = 2,
        -- },
        documentation = cmp.config.window.bordered(),
    }
})

--Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `cmp_git` source if you were installed it.
    },
    {
        { name = 'buffer' },
    })
})


-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' },
        -- { name = 'cmdline' }
    }, {
        { name = 'cmdline' }
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    },
    view = {
        entries = { name = 'wildmenu', separator = '|' }
    },
})

--local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --   capabilities = capabilities
  -- }

require("cmp_git").setup()

-- cmp.setup {
--     sources = {
--         { name = 'nvim_lsp_signature_help' }
--     }
-- }

--require('nvim-autopairs').setup({})
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- cmp.event:on(
--     'confirm_done',
--     cmp_autopairs.on_confirm_done()
-- )

-- require("cmp-haxelib").setup()
-- cmp.setup.filetype('hxml', {
--     sources = cmp.config.sources({
--         { name = "haxelib" }
--     },
--         { name = "buffer" }
--     )
-- })
--

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require('lspconfig').haxe_language_server.setup {
--     cmd = { "haxe-langserver" },
--     --cmd = {"node", "~/dev/nvhx/haxe-langserver.js"},
--     --displayArguments = "build.hxml",
--     capabilities = capabilities,
--     on_attach = on_attach
-- }
