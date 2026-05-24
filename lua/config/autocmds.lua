-- xdg-open binary files
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local filepath = vim.fn.expand("%")
    if filepath == "" then
      return
    end
    -- Read the first 1KB of the file
    local f = io.open(filepath, "rb")
    if not f then
      return
    end
    local chunk = f:read(1024) or ""
    f:close()
    -- Check for null bytes (common in binaries)
    local is_binary = chunk:find("\0", 1, true) ~= nil
    if is_binary then
      -- Open with xdg-open (Linux)
      vim.cmd("silent !xdg-open " .. vim.fn.shellescape(filepath))
      vim.cmd("silent bdelete")
    end
  end,
})

--- ---------------------------------------------------------------------------

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     vim.lsp.inlay_hint.enable(false, { bufnr = args.buf })
--   end,
-- })

--- Terminal -------------------------------------------------------------------

-- terminal cursor: block in terminal-normal, beam in terminal-insert
vim.api.nvim_create_autocmd({ "TermOpen", "TermEnter" }, {
  pattern = "*",
  callback = function()
    vim.opt.guicursor = {
      "n-v-c:block-blinkon200-blinkoff200-blinkwait200",
      "i-ci-ve:ver25-blinkon200-blinkoff200-blinkwait200",
      "r-cr:hor20",
      "o:hor50",
      "t:ver25-blinkon200-blinkoff200-blinkwait200", -- beam in terminal insert
    }
  end,
})
vim.api.nvim_create_autocmd("TermLeave", {
  pattern = "*",
  callback = function()
    -- restore default guicursor
    -- vim.opt.guicursor = {
    --   "n-v-c:block-blinkon200-blinkoff200-blinkwait200",
    --   "i-ci-ve:ver25-blinkon200-blinkoff200-blinkwait200",
    --   "r-cr:hor20",
    --   "o:hor50",
    --
    -- }
    vim.opt.guicursor = {
      "n-v-c:block-blinkon200-blinkoff200-blinkwait200",
      "i-ci-ve:ver25-blinkon200-blinkoff200-blinkwait200",
      "r-cr:hor20",
      "o:hor50",
      "t:ver25-blinkon200-blinkoff200-blinkwait200",
    }
  end,
})

--- Treesitter  ----------------------------------------------------------------

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "TSUpdate",
--   callback = function()
--     -- vim.notify("....updq")
--     local parsers = require("nvim-treesitter.parsers")
--     parsers.haxe = {
--       install_info = {
--         path = "~/dev/nvim/tree-sitter-haxe",
--         queries = "queries",
--         generate = true,
--       },
--     }
--     parsers.hxml = {
--       install_info = {
--         path = "/home/tong/dev/nvim/tree-sitter-hxml",
--         queries = "queries",
--         generate = true,
--       },
--     }
--     -- require("nvim-treesitter.configs").setup(opts)
--   end,
-- })
