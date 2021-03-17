.global lab1
.syntax unified
#define A #4
#define B #5
#define C #1
lab1:
 push {lr}
 mov r0, A
 mov r1, B
 mov r2, C
 bl func
 pop {pc}
func:
 push { r0, r1, r2, lr }
 cmp r0, r1
 ITE GE
 addGE r3,r0,r1
 subLT r3,r0,r1
 sdiv r3,r2
 pop { r0, r1, r2, r3 }
