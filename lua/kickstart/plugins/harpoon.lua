return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end,
      { desc = "Add current buffer to Harpoon list" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<A-h>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<A-j>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<A-k>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<A-l>", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<A-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<A-S-N>", function() harpoon:list():next() end)
  end
}
