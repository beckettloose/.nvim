return {
    -- Highlight color codes in buffers
    "catgoose/nvim-colorizer.lua",
    event = "VimEnter",
    config = function ()
        local colorizer = require('colorizer')
        colorizer.setup()
    end
}
