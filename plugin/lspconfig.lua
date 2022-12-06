--vim.lsp.set_log_level("debug")

local lspconfig = require 'lspconfig'
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local capabilities = require('cmp_nvim_lsp').default_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities) --nvim-cmp
capabilities.textDocument.completion.completionItem.snippetSupport = true

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
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
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

-- Setup language servers

lspconfig.bashls.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.clangd.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.cssls.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.gopls.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.haxe_language_server.setup {
    cmd = { "haxe-langserver" },
    filetypes = {"haxe", "hxml"},
    --root_dir = [[root_pattern("*.hxml")]],
    init_options = { displayArguments = { "build.hxml" } },
    capabilities = capabilities,
    on_attach = on_attach
}
lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
lspconfig.html.setup{
    capabilities = capabilities,
    on_attach = on_attach,
    embeddedLanguages = {
        css = true,
        javascript = true
    }
}
lspconfig.jsonls.setup { capabilities = capabilities, on_attach = on_attach, { "json", "jsonc" } }
lspconfig.marksman.setup {}
--lspconfig.pyright.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.jedi_language_server.setup{}
lspconfig.tsserver.setup{ capabilities = capabilities, on_attach = on_attach }
lspconfig.vimls.setup{ capabilities = capabilities, on_attach = on_attach }

lspconfig.sumneko_lua.setup {
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

