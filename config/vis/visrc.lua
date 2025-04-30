require('vis')
require('hush_detect')

leader = ' '

vis:command_register('fzf', function(argv, force, cur_win, selection, range)
	local out = io.popen('fzf'):read()
	if out then
		if argv[1] then
			vis:command('e '..path)
		else
			vis:command('open '..path)
		end
	end
	vis:feedkeys('<vis-redraw>')
	return true;
end, 'Fuzzy file search')

vis:command_register('rg', function(argv, force, cur_win, selection, range)
	local out = io.popen('irg'):read()
	if out then
		local _, _, path, line, column = string.find(out, '^(.+):(%d+):(%d+):')
		if argv[1] then
			vis:command('e '..path)
		else
			vis:command('open '..path)
		end
		vis:command(line)
	end
	vis:feedkeys('<vis-redraw>')
	return true;
end, 'Fuzzy file-content search')

spellcheckers = {
	['latex'] = '!aspell -t -c $vis_filepath',
}

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set change256colors on')
	vis:command('set theme nord')

	vis:map(vis.modes.NORMAL, leader..'a', ':rg true<Enter>')
	vis:map(vis.modes.NORMAL, leader..'A', ':rg true<Enter>')
	vis:map(vis.modes.NORMAL, leader..'o', ':fzf<Enter>')
	vis:map(vis.modes.NORMAL, leader..'e', ':fzf true<Enter>')

	-- Y and P for system clipboard
	vis:map(vis.modes.NORMAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
	vis:map(vis.modes.NORMAL, 'P', ':< wl-paste 2>/dev/null -n<Enter>')
	vis:map(vis.modes.VISUAL, 'Y', ':> wl-copy 2>/dev/null -n<Enter>')
	vis:map(vis.modes.VISUAL, 'P', ':< wl-paste 2>/dev/null -n<Enter>')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set autoindent')
	vis:command('set expandtab off')
	vis:command('set relativenumbers')
	vis:command('set colorcolumn 80')
	vis:command('set tabwidth 4')
	--vis:command('set statusbar off')

	if win.syntax == 'latex' then
		vis:command('set colorcolumn 0')
	elseif win.syntax == 'python' or win.syntax == 'rust' then
		vis:command('set expandtab')
	elseif win.file.name and win.file.name:find("COMMIT_EDITMSG") then
		vis:command('set colorcolumn 72')
		win:set_syntax("diff")
	elseif win.file.name and win.file.name:find(".eml") then
		vis:command('set colorcolumn 70')
		vis:command(':x/\r/d')
	end

	vis:map(vis.modes.NORMAL, leader..'s',
		function()
			local cmd = spellcheckers[win.syntax]
			if cmd then
				vis:command(':w')
				vis:command(cmd)
				vis:command(':e')
			else
				vis:info('no spell checker found for '..win.syntax)
			end
			return true;
		end)
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
