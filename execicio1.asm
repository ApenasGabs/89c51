;Definiçao de variaveis 
B1 P3.2
B2 P3.3
org 00h




inicio :
    mov r1, Ah ;zera os estados
    mov P1,11111111B ;zera os estados
   ;compara porta de interrupção INT0 e se tiver transição joga para prog1
   ;compara interrupção externa INT1 e se estiver em nivel logico baixo joga para prog2

prog1 :
    rl A  
    mov p1,A
    dec r1
    cjne r1,#0h,prog1
    jmp inicio



prog2 :
    

    jmp inicio

