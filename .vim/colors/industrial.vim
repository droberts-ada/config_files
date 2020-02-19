set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "industrial"

hi Normal          guifg=#c6c6c6 guibg=#121212

" Syntax group
hi Comment         guifg=#666666 guibg=NONE
hi Constant        guifg=#af875f guibg=NONE
hi Error           guifg=NONE    guibg=#ff0000
hi Identifier      guifg=#5f5faf guibg=NONE
hi Ignore          guifg=NONE    guibg=NONE
hi PreProc         guifg=NONE    guibg=NONE
hi Special         guifg=#af875f guibg=NONE
hi Statement       guifg=#8787af guibg=NONE
hi Type            guifg=#8787af guibg=NONE
hi Todo            guifg=#ffd787 guibg=NONE
hi SpecialKey      guifg=#ffd787 guibg=NONE
hi Underlined      guifg=NONE    guibg=NONE
hi MatchParen      guifg=NONE    guibg=#444444

" Cursor
hi Cursor          guifg=#000000 guibg=#669933
hi lCursor         guifg=#070707 guibg=#7fff00
hi CursorIM        guifg=#070707 guibg=#669933
hi CursorLine      guibg=#333333 guibg=#1c1c1c
hi CursorColumn    guibg=#333333 guibg=#669933

" Other
hi Directory       guifg=#aaaaba guibg=NONE
hi LineNr          guifg=#666666 guibg=#000000
hi NonText         guifg=#333333 guibg=#111111
hi Title           guifg=#ffbf9f guibg=#370f07
hi Visual          guifg=NONE guibg=#353535
hi SpellBad        guisp=#aa1565 guibg=NONE

" Search
hi IncSearch       guifg=NONE guibg=#444444
hi Search          guifg=NONE guibg=#444444

" Split area
hi StatusLine      guifg=#ffffff guibg=#003366
hi StatusLineNC    guifg=#cccccc guibg=#000000
hi VertSplit       guifg=#cccccc guibg=#000000
hi WildMenu        guifg=#ffffff guibg=#336699

" Fold
hi Folded          guifg=#ffffff guibg=#333333
hi FoldColumn      guifg=#ffffff guibg=#333333

" Diff
hi DiffText        guifg=#07cfef guibg=#00151f
hi DiffChange      guifg=#ff97ff guibg=#2f002f
hi DiffDelete      guifg=#dfdf00 guibg=#370d15
hi DiffAdd         guifg=#dfdf00 guibg=#370d15

" Messages
hi ErrorMsg        guifg=#ffffff guibg=NONE
hi WarningMsg      guifg=#ffffff guibg=NONE
hi ModeMsg         guifg=#ffffff guibg=NONE
hi MoreMsg         guifg=#ffffff guibg=NONE
hi Question        guifg=#ffffff guibg=NONE
