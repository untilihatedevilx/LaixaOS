.set MAGIC,    0x1BADB002
.set FLAGS,    0x00000007 
.set CHECKSUM, -(MAGIC + FLAGS)

.section .multiboot
.long MAGIC
.long FLAGS
.long CHECKSUM

.long 0, 0, 0, 0, 0
.long 0          
.long 800        
.long 600        
.long 32         

.section .text
.global _start
_start:
    call main
    cli
hang:
    hlt
    jmp hang

