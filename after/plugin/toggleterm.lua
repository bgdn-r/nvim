return require('toggleterm').setup({
	size = function(term)
		if term.direction == 'horizontal' then
			return 25
		elseif term.direction == 'vertical' then
			return 0.3
		end
	end,
	direction = 'horizontal',
	shade_terminals = true,
})
