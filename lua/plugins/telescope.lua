return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files hidden=true<cr>', opts)
        vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
        vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Telescope buffers<cr>', opts)
        vim.api.nvim_set_keymap('n', '<C-A-p>', '<cmd>Telescope oldfiles<cr>', opts)
        vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>Telescope file_browser<cr>', opts)
        vim.api.nvim_set_keymap( "n", "<C-A-s>", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
    end,
}
