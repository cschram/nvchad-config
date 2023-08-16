local M = {}

M.diffview = {
  n = {
    ["<leader>ng"]  = { "<cmd> Neogit <CR>", "Open Neogit" },
    ["<leader>ngc"] = { "<cmd> Neogit commit <CR>", "Open Neogit Commit" },
  },
  v = {},
  i = {},
}

return M
