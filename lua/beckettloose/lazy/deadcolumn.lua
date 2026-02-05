return {
    -- Fade in colorcolumn as you type
    "Bekaboo/deadcolumn.nvim",
    event = "VimEnter",
    config = function()
        local deadcolumn = require('deadcolumn')
        deadcolumn.setup({
            scope = 'line',
            blending = {
                threshold = 0.75,
                alpha = 0.4,
                colorcode = '#454545',
                hlgroup = { 'Normal', 'bg' },
            },
            warning = {
                alpha = 0.4,
                offset = 0,
                colorcode = '#FF0000',
                hlgroup = { 'Error', 'bg' },
            },
        })

        vim.opt.colorcolumn = "81"
    end,
}
