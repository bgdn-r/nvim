return require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 25
        elseif term.direction == "vertical" then
            return 0.3
        end
    end,
    direction = "float",
    autochdir = true,
    shade_terminals = true,
})
