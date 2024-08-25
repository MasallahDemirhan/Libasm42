section .text 
    global ft_strdup
    extern ft_strlen
    extern malloc


ft_strdup:
    call ft_strlen
    push rdi
    mov rdi, rax
    inc rdi
    call malloc
    test rax, rax
    je allocation_failed
    ;mov rax, rdi
    pop rdi
    ;mov rsi, rdi
    ;mov rdi, rax
    xor rcx, rcx
loop:
    mov dl, byte [rdi + rcx]
    mov byte [rax + rcx], dl
    cmp [rdi + rcx], byte 0
    je end
    ;mov byte [rax + rcx], bl
    inc rcx
    jmp loop

allocation_failed:
    mov rax, -1
    ret
   
end:
    inc rcx
    mov [rax + rcx], byte 0
    ;mov rdi, rax
    ;mov rax, rdi
    ret