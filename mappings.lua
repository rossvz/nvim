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
      desc = "run tests at (C)ursor"
    },
    ["<leader>rf"] = {
      function()
        vim.cmd("write!")
        neotest.run.run(vim.fn.expand("%"))
        neotest.summary.open()
      end,
      desc = "run tests in (F)ile"
    },
    ["<leader>rs"] = {
      function()
        vim.cmd("write!")
        neotest.run.run(vim.fn.getcwd())
        neotest.summary.open()
      end,
      desc = "run tests in (S)uite"
    },
    ["<leader>rr"] = {
      function()
        vim.cmd("write!")
        neotest.run.run_last()
      end,
      desc = "(r)e-run last test"
    },
    ["<leader>re"] = {
      function()
        neotest.summary.toggle()
      end,
      desc = "toggle test summary vi(e)w"
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
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
