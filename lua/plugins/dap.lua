return {
  "mfussenegger/nvim-dap",
  opts = function(_, opts)
    local dap = require("dap")
    --dap.set_log_level("DEBUG")
    dap.adapters.hashlink = {
      type = "executable",
      command = "node",
      args = { os.getenv("HOME") .. "/src/hashlink-debugger/adapter.js" },
    }
    dap.configurations.haxe = {
      {
        name = "Debug HashLink",
        request = "launch",
        type = "hashlink",
        classPaths = { "${workspaceFolder}/src" },
        program = function()
          local cwd = vim.fn.getcwd()
          local files = vim.fn.globpath(cwd, "**/*.hl", false, true)
          if #files == 0 then
            error("No .hl file found in workspace!")
          end
          -- Optionally, prompt if more than one found:
          if #files > 1 then
            return vim.fn.input("Select .hl file: ", files[1], "file")
          end
          return files[1]
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
      },
      -- {
      --   name = "Debug HashLink (HXML)",
      --   request = "launch",
      --   type = "hashlink",
      --   hxml = "${workspaceFolder}/build.hxml",
      --   cwd = "${workspaceFolder}",
      --   stopOnEntry = false,
      -- },
    }
  end,
}
