@ From "Raspberry Pi Assembly Language Programming" by Stephen Smith
@ Page 79 listing 4-8


@ Printing a register in hex to stdout

@ r0 - r2: params for linux printing
@ r1: address of byte we are writing
@ r4: register to print
@ r5: loop index
@ r6: current character
@ r7: linux function number


.global _start


_start: ldr r4, =0xde6512ab @ value to print
        ldr r1, =hexstr
        add r1, #9

        mov r5, #8
loop:   and r6, r4, #0xf
        cmp r6, #10
        bge letter

        add r6, #'0'
        b cont
letter: add r6, #('A'-10)

cont:   strb r6, [r1]
        sub r1, #1
        lsr r4, #4

        subs r5, #1
        bne loop

        mov r0, #1
        ldr r1, =hexstr
        mov r2, #11
        mov r7, #4
        svc 0

        mov r0, #0
        mov r7, #1
        svc 0

.data
@ hexstr: .ascii "0x12345678\n"
hexstr: .ascii "0x1122334455\n"