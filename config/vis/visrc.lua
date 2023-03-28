require('vis')
require("hare_detect")
require("hush_detect")

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set change-256colors on')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set theme gruvbox')
	vis:command('set autoindent')
	vis:command('set expandtab off')
	vis:command('set relativenumbers')
	vis:command('set colorcolumn 80')

	vis:map(vis.modes.NORMAL, ',w', ':w<Enter>')
	vis:map(vis.modes.NORMAL, ',q', ':wq<Enter>')
	vis:map(vis.modes.NORMAL, ',l', string.format(':!lualatex %s <Enter>', win.file.name))

	-- Y and P for system clipboard
	vis:map(vis.modes.NORMAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
	vis:map(vis.modes.NORMAL, 'P', '"+y')
	vis:map(vis.modes.VISUAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
	vis:map(vis.modes.VISUAL, 'P', '"+y')


	vis.win.tabwidth = 4
	if win.syntax == 'ansi_c' or win.syntax == 'hare' then
		vis.win.tabwidth = 8
	elseif win.syntax == 'python' then
		vis:command('set expandtab on')
	elseif win.file.name and win.file.name:find("COMMIT_EDITMSG") then
		vis:command('set colorcolumn 72')
		win:set_syntax("diff")
	elseif win.file.name and win.file.name:find(".eml") then
		vis:command('set colorcolumn 70')
	end

	vis:command('set tabwidth '..vis.win.tabwidth)
end)

-- adapted from https://github.com/neosimsim/myenv/blob/78ac724f811107109ef647342b4e1fb3974dc422/dotfiles/config/vis/visrc.lua
--function fmt(file, path)
--	local win = vis.win
--	local fmtcmd = 'sed \'s/[[:blank:]]*$//\''
--
--	local pos = win.selection.pos
--	local status, out, err = vis:pipe(file, { start = 0, finish = file.size }, fmtcmd)
--	if status ~= 0 or not out then
--		if err then
--			vis:info(err)
--		else
--			vis:info("error running " .. fmtcmd)
--		end
--		return true
--	end
--
--	file:delete(0, file.size)
--	file:insert(0, out)
--	win.selection.pos= math.min(pos, file.size - 1)
--	return true
--end
--
--vis.events.subscribe(vis.events.FILE_SAVE_PRE, fmt)