.syntax unified
.cpu cortex-m4
.thumb

.section .vectors
.global vector_table
vector_table:
    .word 0x20020000        /* Initial stack pointer */
    .word reset_handler     /* Reset handler */
    .zero 400

.section .text
.align 1
.global reset_handler
.type reset_handler, %function

reset_handler:
    mov r1, #1
    mov r2, #2
    add r3, r1, r2
loop:
    b loop
