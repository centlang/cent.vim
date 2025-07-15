if exists("b:current_syntax")
    finish
endif

syn keyword centKeyword pub fn type union enum as let mut const

syn keyword centStmt if else switch return break continue unreachable assert
syn keyword centStmt while

syn keyword centWith with

syn keyword centBool true false
syn keyword centSpecial null undefined

syn keyword centType i8 i16 i32 i64 isize u8 u16 u32 u64 usize f32 f64 str bool

syn match centDec display /\<[0-9][0-9_]*/
syn match centHex display /\<0x[0-9a-fA-F_]*/
syn match centBin display /\<0b[01_]*/
syn match centOct display /\<0o[0-7_]*/

syn match centFloat display /\<[0-9][0-9_]*\.[0-9_]\+/

syn match centEscape display contained /\\[nrt'"\\]/
syn region centString start=/"/ end=/"/ skip=/\\"/ contains=centEscape

syn keyword centAttr contained extern
syn region centAttrs start="!(" end=")" contains=centAttr

hi def link centKeyword Keyword
hi def link centStmt Statement
hi def link centWith Statement
hi def link centBool Boolean
hi def link centSpecial Constant
hi def link centType Type

hi def link centDec centNumber
hi def link centHex centNumber
hi def link centOct centNumber
hi def link centBin centNumber
hi def link centNumber Number
hi def link centFloat Float

hi def link centEscape Special
hi def link centString String

hi def link centAttr Keyword
hi def link centAttrs Preproc

let b:current_syntax = "cent"
