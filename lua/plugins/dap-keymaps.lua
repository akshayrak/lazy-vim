return {
  "mfussenegger/nvim-dap",
  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "DAP Continue",
    },
    {
      "<F10>",
      function()
        require("dap").step_over()
      end,
      desc = "DAP Step Over",
    },
    {
      "<F11>",
      function()
        require("dap").step_into()
      end,
      desc = "DAP Step Into",
    },
    {
      "<S-F11>",
      function()
        require("dap").step_out()
      end,
      desc = "DAP Step Out",
    },
    {
      "<leader>dr",
      function()
        require("dap").repl.open()
      end,
      desc = "Open REPL",
    },
    {
      "<leader>dq",
      function()
        require("dap").terminate()
      end,
      desc = "Quit Debugger",
    },
    {
      "<leader>dt",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<leader>du",
      function()
        require("dapui").toggle()
      end,
      desc = "Toggle DAP UI",
    },
    {
      "<leader>db",
      function()
        for _, bp in pairs(require("dap.breakpoints").get()) do
          bp.disabled = true
        end
        print("🔇 Breakpoints disabled")
      end,
      { desc = "Disable all breakpoints" },
    },
    {
      "<leader>de",
      function()
        for _, bp in pairs(require("dap.breakpoints").get()) do
          bp.disabled = false
        end
        print("🔊 Breakpoints enabled")
      end,
      { desc = "Enabled all breakpoints" },
    },
    {
      "<leader>dx",
      function()
        require("dap").clear_breakpoints()
        print("❌ Breakpoints cleared")
      end,
      { desc = "cleared all breakpoints" },
    },
  },
}
