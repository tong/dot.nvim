return {
    "ahmedkhalf/project.nvim",
    opts = {
        patterns = {
            ".git",
            "_darcs",
            ".hg",
            ".bzr",
            ".svn",
            "Makefile",
            "package.json",
            "khafile.js",
            "kfile.js",
        },
        exclude_dirs = {
            "build*/",
        },
    },
    event = "VeryLazy",
    config = function(_, opts)
        require("project_nvim").setup(opts)
        require("telescope").load_extension("projects")
    end,
    keys = {
        { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
    },
}
