" everything is green except (white) comments like this

set background=dark
highlight clear

for target in [ 'Normal', 'QuickFixLine', 'ColorColumn', 'CursorColumn', 'CursorLine', 'CursorLineNr', 'Folded', 'Conceal', 'Cursor', 'Directory', 'EndOfBuffer', 'ErrorMsg', 'FoldColumn', 'IncSearch', 'LineNr', 'MatchParen', 'ModeMsg', 'MoreMsg', 'NonText', 'Pmenu', 'PmenuSbar', 'PmenuSel', 'PmenuThumb', 'PmenuMatch', 'PmenuMatchSel', 'Question', 'Search', 'SignColumn', 'SpecialKey', 'SpellBad', 'SpellCap', 'SpellLocal', 'SpellRare', 'StatusLine', 'StatusLineNC', 'TabLine', 'TabLineFill', 'TabLineSel', 'Terminal', 'Title', 'VertSplit', 'Visual', 'VisualNOS', 'WarningMsg', 'WildMenu', 'Comment', 'Constant', 'Error', 'Function', 'Identifier', 'Ignore', 'Operator', 'PreProc', 'Repeat', 'Special', 'Statement', 'Todo', 'Type', 'Underlined', 'CursorIM', 'ToolbarLine', 'ToolbarButton', 'DiffAdd', 'DiffChange', 'DiffText', 'DiffDelete' ]
	execute 'highlight ' . target . ' ctermfg=green'
endfor

highlight Comment ctermfg=white
