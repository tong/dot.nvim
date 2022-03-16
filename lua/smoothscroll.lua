use {
    "karb94/neoscroll.nvim",
    opt = true,
    config = function()
        require("neoscroll").setup()
    end,
    -- lazy loading
    setup = function()
        require("core.utils").packer_lazy_load "neoscroll.nvim"
    end,
}

