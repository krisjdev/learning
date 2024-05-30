@ From "Raspberry Pi Assembly Language Programming" by Stephen Smith
@ Page 17, listing 1-1

@ r0 - r2: linux function services
@ r7: linux function number

.global _start  @ marks _start as the entry point for this program


_start: mov r0, #1      @ 1 = stdout
        ldr r1, =helloworld     @ string to print
        mov r2, #13     @ length of string -- including \n
        mov r7, #4      @ linux write system call
        svc 0           @ service call

        mov r0, #0      @ return code
        mov r7, #1      @ service code 1 - terminate program
        svc 0           @ service call

.data
helloworld: .ascii "Hello World!\n"