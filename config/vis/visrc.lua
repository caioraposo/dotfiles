require('vis')


vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command('set theme nord')
    vis:command('set autoindent')
    vis:command('set expandtab')
    vis:command('set relativenumbers')
    vis:command('set colorcolumn 100')
    vis.win.tabwidth = 4

    vis:map(vis.modes.NORMAL, ',w', ':w<Enter>')
    vis:map(vis.modes.NORMAL, ',q', ':wq<Enter>')

    -- Y and P for system clipboard
    vis:map(vis.modes.NORMAL, 'Y', '"*y')
    vis:map(vis.modes.NORMAL, 'P', '"*p')
    vis:map(vis.modes.VISUAL, 'Y', '"*y')
    vis:map(vis.modes.VISUAL, 'P', '"*p')


    if win.syntax == 'ansi_c' then
        vis:command('set expandtab off')
        vis.win.tabwidth = 8
    elseif win.syntax == 'makefile' then
        vis:command('set expandtab off')
    end

    vis:command('set tabwidth '..vis.win.tabwidth)

    -- Backspace like Vim's softtabstop
    vis:map(vis.modes.INSERT, '<Backspace>', function()
    	local tabwidth = 4
    	local single_selection = false
    	for selection in vis.win:selections_iterator() do
    		if single_selection then
    			single_selection = false
    			break
    		end
    		single_selection = true
    	end

    	local to_stop = (vis.win.selection.col - 1) % tabwidth
    	if to_stop == 0 then
    		to_stop = tabwidth
    	end

    	if single_selection and to_stop > 1 and vis.win.file:content(vis.win.selection.pos - to_stop, to_stop) == string.rep(' ', to_stop) then
    		vis:feedkeys(string.rep('<vis-delete-char-prev>', to_stop))
    	else
    		vis:feedkeys('<vis-delete-char-prev>')
    	end
    end)

end)
