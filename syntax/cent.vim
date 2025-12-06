if exists("b:current_syntax")
    finish
endif

syn match centIdent /\<[a-zA-Z_][a-zA-Z0-9_]*/ display
syn match centPathSep /::/ display
syn match centModuleSep /::/ display contained nextgroup=centModule skipwhite skipempty
syn match centModule /\<[a-zA-Z_][a-zA-Z0-9_]*/ display contained nextgroup=centModuleSep skipwhite skipempty
syn match centFnCall /\<[a-zA-Z_][a-zA-Z0-9_]*(/he=e-1,me=e-1 display
syn match centFnName /\<[a-zA-Z_][a-zA-Z0-9_]*/ display contained
syn match centStructName /\<[a-zA-Z_][a-zA-Z0-9_]*/ display contained

syn match centOper /\%(+\|-\|*\|\/\|%\|!\|&\||\|^\|<\|>\|=\)=\?/ display
syn match centOper /&&\|||\|??/ display
syn match centDec /\<[0-9][0-9_]*/ display
syn match centHex /\<0x[0-9a-fA-F_]*/ display
syn match centBin /\<0b[01_]*/ display
syn match centOct /\<0o[0-7_]*/ display
syn match centFloat /\<[0-9][0-9_]*\.[0-9_]\+/ display
syn match centEscape /\\[nrt'"\\]/ display contained
syn region centString start=/"/ end=/"/ skip=/\\"/ contains=centEscape
syn region centRune start=/'/ end=/'/ skip=/\\'/ contains=centEscape

syn keyword centKeyword type union enum nextgroup=centStructName skipwhite skipempty
syn keyword centKeyword fn nextgroup=centFnName skipwhite skipempty
syn keyword centKeyword with nextgroup=centModule skipwhite skipempty
syn keyword centKeyword pub let mut const
syn keyword centStmt return break continue unreachable
syn keyword centCond if else switch
syn keyword centRepeat while for in
syn keyword centBool true false
syn keyword centSpecial null undefined
syn keyword centType i8 i16 i32 i64 isize u8 u16 u32 u64 usize f32 f64 bool
syn keyword centType never
syn keyword centOper as sizeof
syn keyword centAttr extern distinct untagged contained
syn region centAttrs start="!(" end=")" contains=centAttr
syn region centComment start=/\/\// end="$"

hi link centIdent Identifier
hi link centModuleSep centPathSep
hi link centPathSep Delimiter
hi link centModule Include
hi link centFnCall Function
hi link centFnName Function
hi link centStructName Structure
hi link centOper Operator
hi link centDec centNumber
hi link centHex centNumber
hi link centOct centNumber
hi link centNumber Number
hi link centFloat Float
hi link centEscape Special
hi link centString String
hi link centRune Character
hi link centKeyword Keyword
hi link centStmt Statement
hi link centCond Conditional
hi link centRepeat Repeat
hi link centBool Boolean
hi link centSpecial Constant
hi link centType Type
hi link centAttr Keyword
hi link centAttrs Preproc
hi link centComment Comment

let b:current_syntax = "cent"
