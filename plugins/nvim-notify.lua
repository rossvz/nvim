return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    notify.setup({
      background_colour = "#000000",
      stages = "fade",
      render = "compact"
    })
    vim.notify = notify
  end
}
