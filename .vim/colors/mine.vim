set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mine"

" 補完
hi Pmenu        ctermfg=250 ctermbg=240
hi PmenuSel     ctermfg=15

" folding
hi Folded       ctermfg=7 ctermbg=236

hi Indentifier  ctermfg=0 ctermbg=15
hi Define       ctermfg=81
hi Comment      ctermfg=239
hi Statement    ctermfg=83
hi Constant     ctermfg=199
hi Operator     ctermfg=11
hi Function     ctermfg=202
hi Delimiter    ctermfg=170
hi Error        ctermfg=0 ctermbg=11 cterm=underline 
hi StorageClass ctermfg=127
hi Structure    ctermfg=226
hi Exception    ctermfg=161
hi Boolean      ctermfg=9
hi Number       ctermfg=196
hi Float        ctermfg=199
hi Include      ctermfg=119
hi Repeat       ctermfg=110
hi SpecialChar  ctermfg=0 ctermbg=229
hi Type         ctermfg=215
hi Keyword      ctermfg=105

""""""""""""""""""""""""""""""""""""""
" PHP
""""""""""""""""""""""""""""""""""""""
"phpEnvVar            Identifier
"phpIdentifier        Identifier
"phpIdentifierSimply  Identifier
"phpIntVar            Identifier

" ドル記号だけ別扱い
"phpOperator          Operator
"phpRelation          Operator
"phpVarSelector       Operator
hi phpVarSelector ctermfg=3

"phpBaselib           Function
"phpFunctions         Function
"phpMethods           Function

"phpConstant          Constant
"phpCoreConstant      Constant

"phpIdentifierConst   Delimiter
"phpParent            Delimiter

"phpOctalError        Error
"phpParentError       Error
"phpDefine            Define
"phpFCKeyword         Define
"phpKeyword           Statement
"phpStatement         Statement
"phpBoolean           Boolean

" 文字列はわかりにくいので色分けする
"phpBacktick          String
hi phpBacktick ctermfg=125
"phpStringDouble      String
hi phpStringDouble ctermfg=202
"phpStringSingle      String
hi phpStringSingle ctermfg=204

"phpSCKeyword         StorageClass
"phpStorageClass      StorageClass
"phpMemberSelector    Structure
"phpStructure         Structure

"phpComment           Comment
"phpConditional       Conditional
"phpException         Exception
"phpNumber            Number
"phpFloat             Float
"phpInclude           Include
"phpLabel             Label
"phpRepeat            Repeat
"phpSpecialChar       SpecialChar
"phpTodo              Todo
"phpType              Type

""""""""""""""""""""""""""""""""""""""
" Ruby
""""""""""""""""""""""""""""""""""""""
hi rubyData ctermbg=1
hi rubyDocumentation ctermbg=2
hi rubyPseudoVariable ctermfg=9

"rubyIdentifier           Identifier
"rubyBlockParameter       rubyIdentifier
"rubyClassVariable        rubyIdentifier
"rubyConstant             rubyIdentifier
"rubyGlobalVariable       rubyIdentifier
"rubyInstanceVariable     rubyIdentifier
"rubyPredefinedIdentifier rubyIdentifier
"rubySymbol               rubyIdentifier
"rubyPredefinedConstant   rubyPredefinedIdentifier
"rubyPredefinedVariable   rubyPredefinedIdentifier

"rubyAccess               Statement
hi rubyAccess ctermfg=127
"rubyAttribute            Statement
"rubyBeginEnd             Statement
"rubyControl              Statement
"rubyEval                 Statement

"rubyComment              Comment
"rubyData                 Comment
"rubyDocumentation        Comment

"rubyDataDirective        Delimiter
"rubyStringDelimiter      Delimiter

"rubyClass                Type
hi rubyClass ctermfg=215
"rubyModule               Type
hi rubyModule ctermfg=217

"rubyEscape               Special
hi rubyEscape ctermfg=0 ctermbg=229
"rubyInterpolation        Special
hi rubyInterpolation ctermfg=214 ctermbg=232

"rubyDefine               Define
"rubyError                Error
"rubySpaceError           rubyError
"rubyException            Exception
"rubyFloat                Float
"rubyFunction             Function
hi rubyFunction ctermfg=226 ctermbg=232
"rubyInclude              Include
"rubyInteger              Number
"rubyASCIICode            rubyInteger
"rubyKeyword              Keyword
"rubyString               String
hi rubyString ctermfg=202
"rubyNoInterpolation      rubyString
hi rubyNoInterpolation  ctermfg=204
"rubyOperator             Operator
"rubyPseudoVariable       Constant
"rubyBoolean              rubyPseudoVariable
hi rubyBoolean ctermfg=9
"rubySharpBang            PreProc
"rubyTodo                 Todo
