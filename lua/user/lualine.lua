local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

local diff = {
  "diff",
  symbols = { added = " ", modified = " ", removed = " "}
}

function M.config()
  require("lualine").setup {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = { diff ,"diagnostics"},
      lualine_y = { "location" },
      lualine_z = { "progress"},
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
