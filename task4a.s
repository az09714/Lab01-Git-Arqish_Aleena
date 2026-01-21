.text
.globl main
main:
    li x10, 0x78786464
    li x11, 0xA8A81919

    li x5, 0x100
    li x6, 0x100

    #1.
    sw x10, 0(x5) #0th index of the array starting from the memory index 0x100

    #2.
    sw x11, 0(x6)  #0th index of the array starting from the memory index 0x1F0

    #3.
    lhu x12, 0(x5)  #loads halfword unsigned - short so loads 2bytes 

    #4.
    lh x13, 0(x6)  #loads halfword signed 

    #5.
    lb x14, 0(x6)  #loads signed character(1 byte)

end:
    j end
