" Vim syntax file
" Language:     8080 & Z80 assembly with M-80
" Maintainer:   Gustavo Seidler <gseidler@gmail.com>
" Last Change:  2016 Dec 22
" Version:      0.03
" Remarks:      SET directive and SET opcode clash

" -----------------------------------------------------------------------------
" Quit when a syntax file was already open
if exists("b:current_syntax")
   finish
endif

set isk=a-z,A-Z,48-57,_,.,'

syn case ignore

" Syntax definitions {{{
" Partial list of register symbols
syn keyword m80Reg      a f b c d e h l sp

" 8080 registers
syn keyword m80Reg      m psw

" Z80 registers
syn keyword m80Reg      af af' bc de hl i r ix iy ixh ixl iyh iyl

" Directives
syn keyword m80Direct   aseg common cseg db dc ds dseg dw end entry public equ
syn keyword m80Direct   ext extrn include name org page set subttl title
syn keyword m80Direct   .printx .radix .z80 .8080 .request .phase .dephase if
syn keyword m80Direct   ift ife iff if1 if2 ifdef ifndef ifb ifnb ifidn ifdif
syn keyword m80Direct   else endif .list .xlist .sfcond .lfcond .tfcond .lall
syn keyword m80Direct   .sall .xall cond endc eject defb defs defw defm defl
syn keyword m80Direct   global external

syn keyword m80Macro   rept irp irpc macro endm exitm local Comments

" Common opcodes
syn keyword m80Opcode   adc add  cp cpi daa di ei in nop out pop push rlc rrc
syn keyword m80Opcode   rlc rrc rst sub

" 8080 opcodes
syn keyword m80Opcode   aci adi ana ani cc cm cma cmc cmp cnc cnz cpe cpo cz
syn keyword m80Opcode   dad dcr dcx hlt inr inx jc jn jnc jnz jm jmp jpe jpo jz
syn keyword m80Opcode   lda ldax lhld lxi mov mvi ora ori pchl ral rar rc rm
syn keyword m80Opcode   rnc rnz rp rpe rpo rz sbb sbi shld sphl sta stc stax
syn keyword m80Opcode   sui xchg xra xri xthl

" Z80 opcodes
syn keyword m80Opcode   and bit ccf cpd cpdr cpir cpl dec djnz ex exx halt im
syn keyword m80Opcode   inc ind ini indr inir ld ldd lddr ldi ldir neg or otdr
syn keyword m80Opcode   otir outd outi res reti retn rl rla rlca rld rr rra
syn keyword m80Opcode   rrca rrd sbc scf set sl1 sla sll sra srl xor

" Strings
syn region m80String    start='"' skip='""' end='"' oneline
syn region m80String    start="'" end="'" oneline

" Symbols
syn match m80Symbol     "[a-z_$.?@][a-z0-9_$.?@]*"  contained

" Numbers
syn match hexNumber     "\d\x*"     contained
syn match octNumber     "\o\+"      contained
syn match decNumber     "\d\+"      contained
syn match binNumber     "[01]\+"    contained

" Formatted data
syn match m80Format     "[a-z_$.?@][a-z0-9_$.?@]*\(##\)\="  contains=m80Symbol
syn match m80Format     "[a-z_$.?@][a-z0-9_$.?@]*:\{1,2}"   contains=m80Symbol
syn match m80Format     "\<\d\+d\=\>"   contains=decNumber
syn match m80Format     "\<[01]\+b\>"   contains=binNumber
syn match m80Format     "\<\o\+[oq]\>"  contains=octNumber
syn match m80Format     "\<\d\x*h\>"    contains=hexNumber
syn match m80Format     "\<x'\d\x*'\>"  contains=hexNumber

" Opcodes that can have flag conditions
syn match m80Opcode     "\<call\(\s\+\([cmz]\|n[cz]\|p[eo]\?\)\)\?\>"
syn match m80Opcode     "\<jp\(\s\+\([cmz]\|n[cz]\|p[eo]\?\)\)\?\>"
syn match m80Opcode     "\<jr\(\s\+\([cz]\|n[cz]\)\)\?\>"
syn match m80Opcode     "\<ret\(\s\+\([cmz]\|n[cz]\|p[eo]\?\)\)\?\>"

" Comments
syn match m80Comment    ";.*"

" }}}
" Highlight definitions {{{
hi def link m80Reg      Identifier
hi def link m80Opcode   Statement
hi def link hexNumber   Number
hi def link decNumber   Number
hi def link octNumber   Number
hi def link binNumber   Number
hi def link m80Symbol   Type
hi def link m80Format   SpecialChar
hi def link m80Direct   PreProc
hi def link m80Macro    Macro
hi def link m80String   String
hi def link m80Comment  Comment

" }}}
let b:current_syntax = "m80"

