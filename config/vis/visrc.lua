-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set theme nord')
	vis:command('set autoindent')
	vis:command('set expandtab')
	vis:command('set tabwidth 4')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	vis:command('set relativenumbers')
end)
