local home = vim.fn.expand("$HOME")
return {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
      api_key_cmd = "gpg --decrypt " .. home .. "/.secrets/chatgpt.txt.gpg"
      })
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>ChatGPT<CR>", opts)
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
}

