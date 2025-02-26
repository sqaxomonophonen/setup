" everything is green except (white) comments like this

set background=dark

for target in [ 'Normal', 'QuickFixLine', 'ColorColumn', 'CursorColumn', 'Folded', 'Conceal', 'Cursor', 'Directory', 'EndOfBuffer', 'FoldColumn', 'IncSearch', 'MatchParen', 'MoreMsg', 'NonText', 'Question', 'SignColumn', 'SpecialKey', 'SpellBad', 'SpellCap', 'SpellLocal', 'SpellRare', 'Terminal', 'VertSplit', 'WarningMsg', 'WildMenu', 'Constant', 'Function', 'Identifier', 'Ignore', 'Operator', 'PreProc', 'Repeat', 'Special', 'Statement', 'Type', 'Underlined', 'CursorIM', 'DiffAdd', 'DiffChange', 'DiffText', 'DiffDelete' ]
	execute 'highlight ' . target . ' ctermfg=green ctermbg=none'
endfor

highlight Comment ctermfg=white

" ok... ui is blue
for target in [ 'TabLine', 'TabLineFill', 'StatusLineTerm', 'StatusLineTermNC', 'StatusLine', 'StatusLineNC', 'ToolbarLine', 'ToolbarButton', 'Title', 'ModeMsg', 'LineNr', 'CursorLine', 'CursorLineNr' ]
	execute 'highlight ' . target . ' ctermfg=blue ctermbg=none'
endfor

" ... mostly ....
highlight TabLineSel ctermfg=white
highlight Todo ctermfg=white ctermbg=magenta " special rule for FIXME, TODO, XXX and more?
highlight Error ctermfg=red
highlight ErrorMsg ctermfg=red

highlight Visual ctermfg=yellow ctermbg=blue
