@ From "Raspberry Pi Assembly Language Programming" by Stephen Smith
@ Page 46, listing 2-3

.global _start


_start: mvn r0, #2
        add r0, #1

        mov r7, #1
        svc 0