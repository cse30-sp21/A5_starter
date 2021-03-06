// CES30 assignment template
// 
// cse30sp21id  : // your cs30sp21 username
//
// Describe target Hardware to the assembler
.arch   armv6
.cpu    cortex-a53
.syntax unified
/////////////////////////////////////////////////////////

.text                       // start of the text segment
/////////////////////////////////////////////////////////
// function hashFun 
/////////////////////////////////////////////////////////
.type   hashFun, %function // define as a function
.global hashFun            // export function name
.equ    FP_OFFSET, 28      // (regs - 1) * 4
/////////////////////////////////////////////////////////

// put any .equ for hashFun here - delete this line

/////////////////////////////////////////////////////////

hashFun:
    push    {r4-r9, fp, lr}     // use r4-r9 protected regs
    add     fp, sp, FP_OFFSET   // locate our frame pointer
    // do not edit the prologue above
    // You can use temporary r0-r3 and preserved r4-r9
    // Store return value (results) in r0
    /////////////////////////////////////////////////////////

    // put your code for hashFun here - delete this line

    /////////////////////////////////////////////////////////
    // do not edit the epilogue below
    sub     sp, fp, FP_OFFSET   // restore sp
    pop     {r4-r9,fp, lr}      // restore saved registers
    bx      lr                  // function return 
    .size   hashFun,(. - hashFun)

