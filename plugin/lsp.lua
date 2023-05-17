--vim.lsp.set_log_level("debug")

require("lsp-format").setup {}

local lspconfig = require 'lspconfig'
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local capabilities = require('cmp_nvim_lsp').default_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities) --nvim-cmp
capabilities.textDocument.completion.completionItem.snippetSupport = true

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    --vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    --vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
    --vim.lsp.buf.format()
end

-- Setup language servers ------------------------------------------------------

lspconfig.bashls.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.clangd.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.cssls.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.gopls.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.haxe_language_server.setup {
    cmd = { "haxe-langserver" },
    filetypes = { "haxe", "hxml" },
    root_dir = lspconfig.util.root_pattern '*.hxml',
    settings = {
        haxe = { executable = 'haxe' },
    },
    init_options = { displayArguments = { "build.hxml" } },
    capabilities = capabilities,
    on_attach = on_attach
}

lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'css', 'sass', 'scss', 'less', 'javascript', 'htmlhugo' },
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
            },
        },
    }
})
lspconfig.html.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    embeddedLanguages = {
        css = true,
        javascript = true
    }
}
lspconfig.jedi_language_server.setup {}
lspconfig.jsonls.setup {
    capabilities = capabilities,
    on_attach = on_attach, { "json", "jsonc" },
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics, {
                -- Disable virtual_text
                virtual_text = false
            }
        ),
    }
}
lspconfig.lemminx.setup {}
-- lspconfig.marksmn.setup {
--     cmd = { "marksman" }
-- }
--lspconfig.pyright.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        },
        --runtime = { version = "LuaJIT" },
        --diagnostic = { globals = { "vim" } },
        --workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false }
    },
    capabilities = capabilities,
    on_attach = on_attach
}
lspconfig.rust_analyzer.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.tsserver.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.vimls.setup { capabilities = capabilities, on_attach = on_attach }
lspconfig.yamlls.setup { capabilities = capabilities, on_attach = on_attach }

require("lspsaga").setup({
    debug = false,
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    -- code action title icon
    code_action_icon = " ",
    code_action_prompt = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>"
    },
    code_action_keys = { quit = "q", exec = "<CR>" },
    rename_action_keys = { quit = "<C-c>", exec = "<CR>" },
    definition_preview_icon = "  ",
    border_style = "single",
    rename_prompt_prefix = "➤",
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. "
})
