section .text
    global ft_strlen

ft_strlen:
    xor rcx, rcx

loop:
    cmp byte [rdi + rcx], byte 0
    je end
    inc rcx
    ;inc rdi
    jmp loop
end:
    mov rax, rcx
    ret