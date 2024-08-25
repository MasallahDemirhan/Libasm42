section .text
    global ft_strcpy

ft_strcpy:
    
    cmp rsi, 0
    je end
    xor rcx, rcx

    copy_loop:
        mov dl, byte [rsi + rcx]
        mov byte [rdi + rcx], dl
        cmp [rsi + rcx], byte 0
        je end
        inc rcx
        jmp copy_loop
    
    end:
        inc rcx
        mov [rdi + rcx], byte 0
        mov rax, rdi
        ret