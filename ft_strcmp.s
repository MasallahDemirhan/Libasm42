global ft_strcmp
    xor rcx, rcx
    

ft_strcmp:
    mov rcx, -1
loop:
    inc rcx
    cmp byte [rdi + rcx], byte 0
    je check_second_null
    cmp byte [rsi + rcx], byte 0
    je check_diff
    mov al, byte [rdi + rcx] 
    cmp al, byte [rsi + rcx]
    je loop
    jmp check_diff

check_second_null:
    mov dl, byte [rsi + rcx]
    cmp  dl, byte 0 
    je equal_end
    jmp check_diff

check_diff:
    mov al, byte [rdi + rcx] 
    cmp al, byte [rsi + rcx]
    jl less_end
    mov rax, 1
    ret

check_null:
    cmp dl, byte 0
    je equal_end
    jmp loop

equal_end:
    mov rax, 0
    ret
less_end:
    mov rax, -1
    ret
