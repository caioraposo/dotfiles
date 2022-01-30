require('vis')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set change-256colors off')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command('set theme acme')
    vis:command('set autoindent')
    vis:command('set expandtab')
    vis:command('set relativenumbers')
    vis:command('set colorcolumn 100')

    vis:map(vis.modes.NORMAL, ',w', ':w<Enter>')
    vis:map(vis.modes.NORMAL, ',q', ':wq<Enter>')
    vis:map(vis.modes.NORMAL, ',c', string.format(':!pdflatex %s <Enter>', win.file.name))

    -- Y and P for system clipboard
    vis:map(vis.modes.NORMAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
    -- vis:map(vis.modes.NORMAL, 'Y', '"+y')
    vis:map(vis.modes.NORMAL, 'P', '"+p')
    vis:map(vis.modes.VISUAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
    -- vis:map(vis.modes.VISUAL, 'Y', '"+y')
    vis:map(vis.modes.VISUAL, 'P', '"+p')


    vis.win.tabwidth = 4
    if win.syntax == 'ansi_c' then
        vis:command('set expandtab off')
        vis.win.tabwidth = 8
    elseif win.syntax == 'makefile' then
        vis:command('set expandtab off')
	elseif win.file.name and win.file.name:find("COMMIT_EDITMSG") then
		vis:command('set colorcolumn 72')
		win:set_syntax("diff")
    end

    vis:command('set tabwidth '..vis.win.tabwidth)
end)
