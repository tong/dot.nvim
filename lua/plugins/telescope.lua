return {
  "telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          --preview_width = 0.5,
        },
        -- width = 0.9,
        -- height = 0.8,
        -- preview_cutoff = 120,
      },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
  dependencies = {
    {
      "debugloop/telescope-undo.nvim",
      keys = {
        {
          "<leader>U",
          "<cmd>Telescope undo<cr>",
          desc = "Undo history",
        },
      },
      config = function()
        require("telescope").load_extension("undo")
      end,
    },
    -- {
    --     "nvim-telescope/telescope-media-files.nvim",
    --     config = function()
    --         require("telescope").load_extension("media_files")
    --     end,
    -- },
  },
}
