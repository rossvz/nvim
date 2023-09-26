-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
--
--
local neotest = require("neotest")
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>r"] = { name = "Test" },
    ["<leader>rc"] = {
      function()
        vim.cmd("write!")
        neotest.run.run()
        neotest.summary.open()
      end,
      desc = "run tests at cursor"
    },
    ["<leader>rC"] = {
      function()
        vim.cmd("write!")
        local path = vim.fn.expand('%')
        local lnum = vim.fn.line('.')
        return require('toggleterm').exec(('mix test %s:%d'):format(path, lnum), 1)
      end,
      desc = "run tests at cursor in ToggleTerm"
    },
    ["<leader>rf"] = {
      function()
        vim.cmd("write!")
        neotest.run.run(vim.fn.expand("%"))
        neotest.summary.open()
      end,
      desc = "run tests in file"
    },
    ["<leader>rs"] = {
      function()
        vim.cmd("write!")
        neotest.run.run(vim.fn.getcwd())
        neotest.summary.open()
      end,
      desc = "run tests in suite"
    },
    ["<leader>rr"] = {
      function()
        vim.cmd("write!")
        neotest.run.run_last()
      end,
      desc = "re-run last test"
    },
    ["<leader>re"] = {
      function()
        neotest.summary.toggle()
      end,
      desc = "toggle test summary view"
    },
    ["<leader>ro"] = {
      function()
        neotest.output.open({ enter = true, auto_close = true })
      end,
      desc = "show test output panel"
    },
    -- move lines up/down
    ["<C-Down>"] = { "<cmd>m .+1<CR>==", desc = "Move line down" },
    ["<C-Up>"] = { "<cmd>m .-2<CR>==", desc = "Move line up" },
    ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Goto definition" },
    ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Goto declaration" },
    ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "Goto implementation" },
    ["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", desc = "Goto references" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
