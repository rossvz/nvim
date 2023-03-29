-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
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
        require("neotest").run.run()
      end,
      desc = "Run Tests At Cursor"
    },
    ["<leader>rf"] = {
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run Tests in File"
    },
    ["<leader>rs"] = {
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run Tests in Suite"
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
