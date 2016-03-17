" Vim color file
" Maintainer:  Sam Rang

set background=dark
set t_Co=256
let g:colors_name="rangler"

let python_highlight_all = 1
let c_gnu = 1
let java_highlight_all=1
let java_highlight_functions=1
let java_allow_cpp_keywords=1
let java_highlight_lang_ids=1


hi Normal       ctermfg=253         ctermbg=None        cterm=None
hi String       ctermfg=29          ctermbg=234         cterm=None
hi Cursor       ctermfg=253         ctermbg=57          cterm=None
hi SpecialKey   ctermfg=22          ctermbg=None        cterm=None
hi Directory    ctermfg=57          ctermbg=254         cterm=None
hi ErrorMsg     ctermfg=160         ctermbg=245         cterm=None
hi PreProc      ctermfg=243         ctermbg=None        cterm=Bold
hi Search       ctermfg=125         ctermbg=None        cterm=Bold
hi Type         ctermfg=166         ctermbg=None        cterm=Bold
hi Statement    ctermfg=172         ctermbg=None        cterm=Bold
hi Comment      ctermfg=240         ctermbg=None        cterm=None
hi LineNr       ctermfg=226         ctermbg=237         cterm=None
hi NonText      ctermfg=28          ctermbg=None        cterm=Bold
hi DiffText     ctermfg=165         ctermbg=244         cterm=None
hi Constant     ctermfg=76          ctermbg=None        cterm=None
hi Todo         ctermfg=162         ctermbg=None        cterm=Bold
hi Identifier   ctermfg=142         ctermbg=None        cterm=Bold
hi Error        ctermfg=None        ctermbg=196         cterm=Bold
hi Special      ctermfg=172         ctermbg=None        cterm=Bold
hi Ignore       ctermfg=221         ctermbg=None        cterm=Bold
hi Underline    ctermfg=147         ctermbg=None        cterm=Italic
hi FoldColumn   ctermfg=132         ctermbg=None        cterm=None
hi Folded       ctermfg=132         ctermbg=None        cterm=Bold
hi Visual       ctermfg=248         ctermbg=238         cterm=None
hi Pmenu        ctermfg=62          ctermbg=None        cterm=None
hi PmenuSel     ctermfg=69          ctermbg=None        cterm=Bold
hi PmenuSbar    ctermfg=247         ctermbg=None        cterm=Bold
hi PmenuThumb   ctermfg=248         ctermbg=None        cterm=None
hi StatusLineNC ctermfg=248         ctermbg=239         cterm=None
hi StatusLine   ctermfg=39          ctermbg=239         cterm=None
hi VertSplit    ctermfg=239         ctermbg=239         cterm=None

hi TabLine      ctermfg=245         ctermbg=239         cterm=None
hi TabLineFill  ctermfg=239         ctermbg=239
hi TabLineSel   ctermfg=104         ctermbg=236         cterm=Bold

" html
hi htmlString       ctermfg=74          ctermbg=None        cterm=None
hi htmlBody         ctermfg=38          ctermbg=236         cterm=None
hi htmlTag          ctermfg=109         ctermbg=None        cterm=None
hi htmlEndTag       ctermfg=109         ctermbg=None        cterm=None
hi htmlTagName      ctermfg=209         ctermbg=None        cterm=None
hi htmlCommentPart  ctermfg=246         ctermbg=17          cterm=None
hi htmlComment      ctermfg=241         ctermbg=None        cterm=None
hi htmlDoctype      ctermfg=19          ctermbg=234         cterm=None

" js
"hi javascriptIdentifierName ctermfg=23 ctermbg=None cterm=None
" php

" c
hi cStructure   ctermfg=136         ctermbg=None        cterm=None
hi cIncluded    ctermfg=23          ctermbg=234         cterm=None

" vim
hi vimHiGroup   ctermfg=214         ctermbg=None        cterm=None
hi vimGroup     ctermfg=214         ctermbg=None        cterm=None

" sql
hi mysqlKeyword  ctermfg=31          ctermbg=None        cterm=Bold
hi mysqlOperator ctermfg=49          ctermbg=None        cterm=Bold
hi mysqlFlow     ctermfg=29          ctermbg=None        cterm=Bold
hi mysqlNumber   ctermfg=46          ctermbg=None        cterm=None
hi mysqlSpecial  ctermfg=46          ctermbg=None        cterm=Bold


"vim: sw=4

"hi Union -- no settings --
"hi clear -- no settings --
"hi IncSearch guifg=#111111 guibg=#ffffaa guisp=#ffffaa gui=NONE ctermfg=233 ctermbg=229 cterm=NONE
"hi WildMenu guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi SignColumn guifg=#6c6c6c guibg=#242424 guisp=#242424 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
"hi SpecialComment guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi Typedef guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi Title guifg=#f6f3e8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
"hi Folded guifg=#a0a8b0 guibg=#323232 guisp=#323232 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
"hi PreCondit guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Include guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Float guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi StatusLineNC guifg=#111111 guibg=#444444 guisp=#444444 gui=NONE ctermfg=233 ctermbg=238 cterm=NONE
"hi CTagsMember guifg=#223b47 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
"hi NonText guifg=#6c6c6c guibg=#242424 guisp=#242424 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
"hi CTagsGlobalConstant guifg=#3496c7 guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
"hi DiffText guifg=#5dc269 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
"hi ErrorMsg guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
"hi Ignore guifg=#aad5eb guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
"hi Debug guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
"hi Identifier guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi SpecialChar guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi Conditional guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi StorageClass guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi Todo guifg=#111111 guibg=#ffaa00 guisp=#ffaa00 gui=italic ctermfg=233 ctermbg=214 cterm=NONE
"hi Special guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi LineNr guifg=#6c6c6c guibg=#242424 guisp=#242424 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
"hi StatusLine guifg=#ffffaa guibg=#444444 guisp=#444444 gui=italic ctermfg=229 ctermbg=238 cterm=NONE
"hi Label guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi CTagsImport guifg=#456270 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
"hi PMenuSel guifg=#121212 guibg=#caeb82 guisp=#caeb82 gui=NONE ctermfg=233 ctermbg=192 cterm=NONE
"hi Search guifg=#111111 guibg=#ffffaa guisp=#ffffaa gui=NONE ctermfg=233 ctermbg=229 cterm=NONE
"hi CTagsGlobalVariable guifg=#7e9aa8 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
"hi Delimiter guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi Statement guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
"hi SpellRare guifg=#dd0000 guibg=#121212 guisp=#121212 gui=underline ctermfg=160 ctermbg=233 cterm=underline
"hi EnumerationValue guifg=#2a4857 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
"hi Comment guifg=#555555 guibg=NONE guisp=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=NONE
"hi Character guifg=#95e454 guibg=NONE guisp=NONE gui=italic ctermfg=113 ctermbg=NONE cterm=NONE
"hi TabLineSel guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi Number guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Boolean guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Operator guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi CursorLine guifg=NONE guibg=#242424 guisp=#242424 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi TabLineFill guifg=#cccccc guibg=#242424 guisp=#242424 gui=NONE ctermfg=252 ctermbg=235 cterm=NONE
"hi Question guifg=#8787af guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
"hi WarningMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi VisualNOS guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi DiffDelete guifg=#b3793e guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
"hi ModeMsg guifg=#005faf guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
"hi CursorColumn guifg=NONE guibg=#2d2d2d guisp=#2d2d2d gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi Define guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Function guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi FoldColumn guifg=#a0a8b0 guibg=#323232 guisp=#323232 gui=NONE ctermfg=103 ctermbg=236 cterm=NONE
"hi PreProc guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi EnumerationName guifg=#599aba guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
"hi Visual guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi MoreMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
"hi SpellCap guifg=#dd0000 guibg=#121212 guisp=#121212 gui=underline ctermfg=160 ctermbg=233 cterm=underline
"hi VertSplit guifg=#444444 guibg=#444444 guisp=#444444 gui=NONE ctermfg=238 ctermbg=238 cterm=NONE
"hi Exception guifg=#9bcc29 guibg=NONE guisp=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
"hi Keyword guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
"hi Type guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi DiffChange guifg=#00afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
"hi Cursor guifg=#222222 guibg=#ecee90 guisp=#ecee90 gui=NONE ctermfg=235 ctermbg=228 cterm=NONE
"hi SpellLocal guifg=#dd0000 guibg=#121212 guisp=#121212 gui=underline ctermfg=160 ctermbg=233 cterm=underline
"hi Error guifg=#af00ff guibg=NONE guisp=NONE gui=NONE ctermfg=129 ctermbg=NONE cterm=NONE
"hi PMenu guifg=#f6f3e8 guibg=#444444 guisp=#444444 gui=NONE ctermfg=230 ctermbg=238 cterm=NONE
"hi SpecialKey guifg=#6c6c6c guibg=#121212 guisp=#121212 gui=NONE ctermfg=242 ctermbg=233 cterm=NONE
"hi Constant guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi DefinedName guifg=#15a131 guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
"hi Tag guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
"hi String guifg=#95e454 guibg=NONE guisp=NONE gui=italic ctermfg=113 ctermbg=NONE cterm=NONE
"hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi MatchParen guifg=#ecee90 guibg=#2d2d2d guisp=#2d2d2d gui=bold ctermfg=228 ctermbg=236 cterm=bold
"hi LocalVariable guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi Repeat guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi SpellBad guifg=#dd0000 guibg=#121212 guisp=#121212 gui=underline ctermfg=160 ctermbg=233 cterm=underline
"hi CTagsClass guifg=#4396bf guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
"hi Directory guifg=#31a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
"hi Structure guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi Macro guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Underlined guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi DiffAdd guifg=#4590b5 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
"hi TabLine guifg=#cccccc guibg=#444444 guisp=#444444 gui=NONE ctermfg=252 ctermbg=238 cterm=NONE
"hi signifysignchange guifg=#87afff guibg=#222222 guisp=#222222 gui=NONE ctermfg=111 ctermbg=235 cterm=NONE
"hi signifysigndelete guifg=#f78181 guibg=#222222 guisp=#222222 gui=NONE ctermfg=210 ctermbg=235 cterm=NONE
"hi signifysignadd guifg=#95e454 guibg=#222222 guisp=#222222 gui=NONE ctermfg=113 ctermbg=235 cterm=NONE
"hi colorcolumn guifg=NONE guibg=#242424 guisp=#242424 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi cursorlinenr guifg=#ecee90 guibg=#242424 guisp=#242424 gui=NONE ctermfg=228 ctermbg=235 cterm=NONE
"hi jshinterror guifg=NONE guibg=#990000 guisp=#990000 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE