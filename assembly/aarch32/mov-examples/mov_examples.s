@ From "Raspberry Pi Assembly Language Programming" by Stephen Smith
@ Page 41, listing 2-1

.global _start


        @ move 0x4f5d6e3a into r2
        @ there is no movt instruction, and the most mov can do is 16 bits
        @ so the below wouldnt work
        @ _start: mov r2, #0x6e3a 
                @ movt r2, #0x4f5d

_start: ldr r2, =0x4f5d6e3a

        @ copy r2 into r1
        mov r1, r2

        @ shift versions of mov
        mov r1, r2, lsl #1
        mov r1, r2, lsr #1
        mov r1, r2, asr #1
        mov r1, r2, ror #1
        mov r1, r2, rrx

        @ assembler mnemonics of the above
        lsl r1, r2, #1
        lsr r1, r2, #1
        asr r1, r2, #1
        ror r1, r2, #1
        rrx r1, r2

        @ works with 8 bit immediate + shift
        mov r1, #0xab000000

        @ too large
        @ mov r1, #0xabcdef11

        @ mvn example
        @ 45 =      0b0000 0000 0010 1101
        @ mvn(45) = 0b1111 1111 1101 0010 = 0d65490
        mvn r1, #45

        @ example of mov that would get changed to mvn
        mov r1, #0xfffffffe 

        @ exiting
        mov r0, #0
        mov r7, #1
        svc 0