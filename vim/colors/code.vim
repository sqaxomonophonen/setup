set background=dark

" most stuff
for target in [ 'Normal', 'QuickFixLine', 'ColorColumn', 'CursorColumn', 'Folded', 'Conceal', 'Cursor', 'Directory', 'EndOfBuffer', 'FoldColumn', 'IncSearch', 'MoreMsg', 'NonText', 'Question', 'SignColumn', 'SpecialKey', 'SpellBad', 'SpellCap', 'SpellLocal', 'SpellRare', 'Terminal', 'VertSplit', 'WarningMsg', 'WildMenu', 'Constant', 'Function', 'Identifier', 'Ignore', 'Operator', 'PreProc', 'Repeat', 'Special', 'Statement', 'Type', 'Underlined', 'CursorIM', 'DiffAdd', 'DiffChange', 'DiffText', 'DiffDelete', 'htmlH2', 'htmlItalic' ]
	execute 'highlight ' . target . ' cterm=none ctermfg=green ctermbg=none'
endfor

" comments
highlight Comment ctermfg=white

" matching parenthesis
highlight MatchParen ctermbg=blue

" diffs
highlight gitDiff ctermfg=blue
highlight diffAdded ctermfg=white
highlight diffRemoved ctermfg=magenta

" ui
for target in [ 'TabLine', 'TabLineFill', 'StatusLineTerm', 'StatusLineTermNC', 'StatusLine', 'StatusLineNC', 'ToolbarLine', 'ToolbarButton', 'Title', 'ModeMsg', 'LineNr', 'CursorLine', 'CursorLineNr' ]
	execute 'highlight ' . target . ' ctermfg=blue ctermbg=none'
endfor
highlight TabLineSel ctermfg=white
highlight Todo ctermfg=white ctermbg=magenta " special rule for FIXME, TODO, XXX and more?
highlight Error ctermfg=red ctermbg=black
highlight ErrorMsg ctermfg=red ctermbg=black

highlight Visual ctermfg=yellow ctermbg=blue

