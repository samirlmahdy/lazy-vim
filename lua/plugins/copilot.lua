return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Enable Copilot for all filetypes
      vim.g.copilot_filetypes = {
        ["*"] = true,
      }

      -- Optional: Disable default tab mapping if you prefer custom keybindings
      -- vim.g.copilot_no_tab_map = true
    end,
  },
}
