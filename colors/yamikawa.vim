
if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yamikawa'
let s:style = &background

let s:palette = {'gui' : {} , 'cterm' : {}}

if exists("g:yamikawa_reduced_contrast") && g:yamikawa_reduced_contrast == 1
  " let s:gui_background = '#232c31'
  let s:gui_background = "#302230"
  let s:gui_foreground = "#c5c8c6"
  let s:gui_selection  = "#425059"
  let s:gui_line       = "#2d3c46"
  let s:gui_comment    = "#84738C"
else
  let s:gui_background = "#302230"
  let s:gui_foreground = "#c5c8c6"
  let s:gui_selection  = "#425059"
  let s:gui_line       = "#2d3c46"
  let s:gui_comment    = "#84738C"
endif

let s:palette.gui.base = {'dark': "#D89CF2", 'light': "#D89CF2"}

let s:palette.gui.background = { 'dark' : s:gui_background , 'light' : "#EAD8F2" }
let s:palette.gui.foreground = { 'dark' : s:gui_foreground , 'light' : "#4a4a4a" }
let s:palette.gui.selection  = { 'dark' : s:gui_selection  , 'light' : "#bcbcbc" }
let s:palette.gui.line       = { 'dark' : s:gui_line       , 'light' : "#d0d0d0" }
let s:palette.gui.comment    = { 'dark' : s:gui_comment    , 'light' : "#959595" }

let s:palette.gui.red        = { 'dark' : "#F29C9C"        , 'light' : "#DA2B2B" }
let s:palette.gui.orange     = { 'dark' : "#F2C79C"        , 'light' : "#DA732B" }
let s:palette.gui.yellow     = { 'dark' : "#F2E49C"        , 'light' : "#daae2b" }
let s:palette.gui.green      = { 'dark' : "#C7F29C"        , 'light' : "#2BDA39" }
let s:palette.gui.aqua       = { 'dark' : "#9CF2F2"        , 'light' : "#2BBCDA" }
let s:palette.gui.blue       = { 'dark' : "#9CB9F2"        , 'light' : "#4F29D9" }
let s:palette.gui.pale       = { 'dark' : "#9CA3F2"        , 'light' : "#652BDA" }
let s:palette.gui.purple     = { 'dark' : "#AA9CF2"        , 'light' : "#912BDA" }

let s:palette.gui.window     = { 'dark' : "#303030"        , 'light' : "#9e9e9e" }
let s:palette.gui.darkcolumn = { 'dark' : "#1c1c1c"        , 'light' : "#808080" }
let s:palette.gui.addbg      = { 'dark' : "#5F875F"        , 'light' : "#d7ffd7" }
let s:palette.gui.addfg      = { 'dark' : "#d7ffaf"        , 'light' : "#005f00" }
let s:palette.gui.changebg   = { 'dark' : "#5F5F87"        , 'light' : "#d7d7ff" }
let s:palette.gui.changefg   = { 'dark' : "#d7d7ff"        , 'light' : "#5f005f" }
let s:palette.gui.delbg      = { 'dark' : "#cc6666"        , 'light' : "#ffd7d7" }
let s:palette.gui.darkblue   = { 'dark' : "#00005f"        , 'light' : "#d7ffd7" }
let s:palette.gui.darkcyan   = { 'dark' : "#005f5f"        , 'light' : "#005f00" }
let s:palette.gui.darkred    = { 'dark' : "#5f0000"        , 'light' : "#d7d7ff" }
let s:palette.gui.darkpurple = { 'dark' : "#5f005f"        , 'light' : "#5f005f" }

exe 'hi! Normal       '. 'guifg='. s:palette.gui.foreground[s:style]. ' guibg='. s:palette.gui.background[s:style]
exe 'hi! Cursor       '. 'guibg='. s:palette.gui.foreground[s:style]
exe 'hi! ColorColumn  '. 'guibg='. s:palette.gui.foreground[s:style]
exe 'hi! CursorColumn '. 'guibg='. s:palette.gui.foreground[s:style]
exe 'hi! CursorLine   '. 'guibg='. s:palette.gui.foreground[s:style]

exe 'hi! Comment      '. 'guifg='. s:palette.gui.comment[s:style]
exe 'hi! Conceal      '. 'guifg='. s:palette.gui.comment[s:style]

exe 'hi! Constant     '. 'guifg='. s:palette.gui.red[s:style]
exe 'hi! String       '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! Character    '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! Number       '. 'guifg='. s:palette.gui.blue[s:style]
exe 'hi! Boolean      '. 'guifg='. s:palette.gui.red[s:style]
exe 'hi! Float        '. 'guifg='. s:palette.gui.orange[s:style]

exe 'hi! Function     '. 'guifg='. s:palette.gui.yellow[s:style]
exe 'hi! Identifier   '. 'guifg='. s:palette.gui.purple[s:style]

exe 'hi! Statement    '. 'guifg='. s:palette.gui.blue[s:style]
exe 'hi! Conditional  '. 'guifg='. s:palette.gui.blue[s:style]
exe 'hi! Repeat       '. 'guifg='. s:palette.gui.blue[s:style]
exe 'hi! Label        '. 'guifg='. s:palette.gui.blue[s:style]

exe 'hi! Operator     '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! Keyword      '. 'guifg='. s:palette.gui.yellow[s:style]
exe 'hi! Exception    '. 'guifg='. s:palette.gui.red[s:style]

exe 'hi! PreProc      '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! Include      '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! Define       '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! Macro        '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! PreConfit    '. 'guifg='. s:palette.gui.aqua[s:style]

exe 'hi! Type         '. 'guifg='. s:palette.gui.orange[s:style]
exe 'hi! StorageClass '. 'guifg='. s:palette.gui.orange[s:style]

exe 'hi! Structure    '. 'guifg='. s:palette.gui.aqua[s:style]
exe 'hi! Typedef      '. 'guifg='. s:palette.gui.aqua[s:style]

exe 'hi! Special        '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! SpecialChar    '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! Tag            '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! Delimiter      '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! SpecialComment '. 'guifg='. s:palette.gui.green[s:style]
exe 'hi! Debug          '. 'guifg='. s:palette.gui.green[s:style]

exe 'hi! Underlined '. 'guifg='. s:palette.gui.blue[s:style]
exe 'hi! Ignore     '. 'guifg='. 'NONE'

exe 'hi! Error '. 'guifg='. s:palette.gui.red[s:style]
exe 'hi! Todo  '. 'guifg='. s:palette.gui.addfg[s:style]

exe 'hi! Title      '. 'guifg='. s:palette.gui.orange[s:style]
exe 'hi! qfLineNr   '. 'guifg='. s:palette.gui.yellow[s:style]
exe 'hi! qfFileName '. 'guifg='. s:palette.gui.yellow[s:style]
exe 'hi! qfLineNr   '. 'guifg='. s:palette.gui.yellow[s:style]
exe 'hi! qfError    '. 'guifg='. s:palette.gui.yellow[s:style]

exe 'hi! PMenu '. 'guifg='. '#F2F0F2 guibg=#6A5C70'
exe 'hi! PMenuSel '. 'guifg='. '#29212C guibg=#D0C2D6'

if has('nvim')
  " Set g:terminal_color
else
  " Set terminal_ansi_colors
endif

hi! link vimLet Keyword
hi! link vimVar Normal
hi! link vimNotFunc Statement
hi! link vimFunction Statement
hi! link vimFuncVar Normal
hi! link vimGroup Statement
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimFuncSID vimFunction
hi! link vimOperParen Operator

hi! link vimCommand Statement
hi! link vimIsCommand Normal

hi! link vimHighlight Function
hi! link vimHiTerm Identifier
hi! link vimHiCTerm Type
hi! link vimHiGroup Statement
hi! link vimHiCtermFgBg Type
hi! link vimHiCtermRgb Constant
hi! link vimHiGuiFgBg Type
hi! link vimHiGuiRgb Constant

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall Normal
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration Normal
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition Normal
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Normal
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor Normal
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField Normal
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator Normal
hi! link TSParameter Normal
hi! link TSParameterReference Normal
hi! link TSProperty TSField
hi! link TSPunctDelimiter Normal
hi! link TSPunctBracket Normal
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagAttribute htmlArg
hi! link TSTagDelimiter htmlTagName
hi! link TSText Normal
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable Normal
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
