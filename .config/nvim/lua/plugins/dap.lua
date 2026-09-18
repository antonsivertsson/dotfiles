local dap = require("dap")
local utils = require("dap.utils")

local js_debug_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"

dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = "${port}",
  executable = {
    command = "node",
    args = {
      js_debug_path,
      "${port}",
      "127.0.0.1",
    },
  },
}

dap.configurations.typescript = {
  {
    type = "pwa-node",
    request = "attach",
    name = "Attach - NestJS",
    address = "127.0.0.1",
    port = 9229,
    cwd = "${workspaceFolder}",
    sourceMaps = true,
    skipFiles = {
      "<node_internals>/**",
    },
  },

  {
    type = "pwa-node",
    request = "attach",
    name = "Attach to process ID",
    processId = utils.pick_process,
    cwd = "${workspaceFolder}",
    sourceMaps = true,
  },
}
