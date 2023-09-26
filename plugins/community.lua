return {
  "AstroNvim/astrocommunity",
  -- disable copilot since subscription ended
  {
    import = "astrocommunity.completion.copilot-lua-cmp",
  },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      filetypes = {
        heex = false
      },
      copilot_node_command = "/Users/rossvz/.asdf/shims/node"

    },
  },
  { import = "astrocommunity.colorscheme.everforest" },
}
