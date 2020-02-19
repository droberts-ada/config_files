set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "industrial"

" Most used
hi Normal          guifg=#ffffff guibg=#000000
hi Statement       guifg=#33af5f guibg=NONE
hi Type            guifg=#33af5f guibg=NONE
hi Constant        guifg=#d7af5f guibg=NONE
hi Comment         guifg=#8787af guibg=NONE
hi Todo            guifg=#ffd787 guibg=NONE
hi MatchParen      guifg=NONE    guibg=#444444
hi CursorLine      guibg=#333333 guibg=#1c1c1c
hi LineNr          guifg=#666666 guibg=#000000
hi IncSearch       guifg=NONE    guibg=#444444
hi Search          guifg=NONE    guibg=#4e4e4e
hi Visual          guifg=NONE    guibg=#4e4e4e
hi PMenu           guifg=#1c1c1c guibg=#c6c6c6
hi PMenuSel        guifg=#eeeeee guibg=#4e4e4e
hi PMenuThumb      guifg=#8787af guibg=#ff0000

" Syntax group
hi Error           guifg=NONE    guibg=#ff0000
hi Identifier      guifg=#5f5faf guibg=NONE
hi Ignore          guifg=NONE    guibg=NONE
hi PreProc         guifg=NONE    guibg=NONE
hi Special         guifg=#af875f guibg=NONE
hi SpecialKey      guifg=#ffd787 guibg=NONE
hi Underlined      guifg=NONE    guibg=NONE

" Cursor
hi Cursor          guifg=#000000 guibg=#669933
hi lCursor         guifg=#070707 guibg=#7fff00
hi CursorIM        guifg=#070707 guibg=#669933
hi CursorColumn    guibg=#333333 guibg=#669933

" Other
hi Directory       guifg=#aaaaba guibg=NONE
hi NonText         guifg=#333333 guibg=#111111
hi Title           guifg=#ffbf9f guibg=#370f07
hi SpellBad        guisp=#aa1565 guibg=NONE

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
