return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- hide clock
      opts.sections.lualine_z = {}
      table.insert(opts.sections.lualine_z, {
        function()
          local hxml = require("nvhx.hxml")
          if hxml and hxml.get_active then
            local active_hxml = hxml.get_active()
            if active_hxml and active_hxml.path then
              return " " .. active_hxml.path
            end
          end
          return ""
        end,
        color = { bg = "#f7941e" },
        events = { "User NvhxHxmlChanged", "BufEnter" },
      })

      -- opts.sections.lualine_x = {
      --   { "branch" },
      -- }
      -- for _, section in ipairs(opts.sections.lualine_c or {}) do
      --   if type(section) == "table" and section[1] == "filetype" then
      --     section.icon_only = false
      --   end
      -- end

      -- table.insert(opts.sections.lualine_x, { "filetype", icon_only = false })
      -- Haxe component for Lualine
      -- table.insert(opts.sections.lualine_x, {
      --   function()
      --     local hxml = package.loaded["nvhx.hxml"]
      --     if hxml and hxml.get_active then
      --       local active_hxml = hxml.get_active()
      --       if active_hxml and active_hxml.path then
      --         return "hxml: " .. require("plenary.path"):new(active_hxml.path):basename()
      --       end
      --     end
      --     return ""
      --   end,
      --   cond = function()
      --     return vim.bo.filetype == "haxe"
      --   end,
      --   color = { fg = "#f7941e" },
      --   -- Tell Lualine to refresh this component on our custom event
      --   events = { "User NvhxHxmlChanged", "BufEnter" },
      -- })

      -- Haxe component for Lualine
      -- table.insert(opts.sections.lualine_z, {
      --   function()
      --     local hxml = package.loaded["nvhx.hxml"]
      --     if hxml and hxml.get_active then
      --       local active_hxml = hxml.get_active()
      --       if active_hxml and active_hxml.path then
      --         return "hxml: " .. require("plenary.path"):new(active_hxml.path):basename()
      --       end
      --     end
      --     return ""
      --   end,
      --   cond = function()
      --     return vim.bo.filetype == "haxe"
      --   end,
      --   color = { fg = "#f7941e" },
      -- })

      -- print(vim.inspect(opts))
    end,
  },
}
