.text
.globl main
main:
    li x20, 1           #x=1
    li x22, 4          #b=4
    li x23, 1           #c=1

    li t0, 1
    beq x20, t0, Case1  #case1
    li t0, 2
    beq x20, t0, Case2  #case2
    li t0, 3
    beq x20, t0, Case3  #case3
    li t0, 4
    beq x20, t0, Case4  #case4
    j exit

    Case1:
        add x21, x22, x23   #a=b+c
        j end
    Case2:
        sub x21, x22, x23   #a=b-c
        j end
    Case3:
        slli x21, x22, 1    #a=b*2(shift left by 1)
        j end
    Case4:
        srai x21, x22, 1    #a=b/2(shift right by 1)
        j end
    exit:
        li x21, 0           #a=0

end:
   j end 
