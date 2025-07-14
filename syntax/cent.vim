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

hi def link centKeyword Keyword
hi def link centStmt Statement
hi def link centWith Statement
hi def link centBool Boolean
hi def link centSpecial Constant
hi def link centType Type

let b:current_syntax = "cent"
