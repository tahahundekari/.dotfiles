return {
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavor = "mocha",
            integrations = {
                treesitter = true,
                nvimtree = {
                    enabled = true,
                    show_root = true
                },
                telescope = true,
            }
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
