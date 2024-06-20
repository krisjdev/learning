@ From "Raspberry Pi Assembly Language Programming" by Stephen Smith
@ Page 49 listing 2-4

.global _start


_start: mov r2, #0x00000003
        mov r3, #0xFFFFFFFF
        mov r4, #0x00000005
        mov r5, #0x00000001

        adds r1, r3, r5 @ r1 = r3 + r5
        adc r0, r2, r4 @ r0 = r2 + r4 + carry


        mov r7, #1
        svc 0