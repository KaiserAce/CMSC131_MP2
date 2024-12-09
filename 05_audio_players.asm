section .data
    audio_program db "/usr/bin/paplay", 0     
    bgm db "bgm.mp3", 0  
    argv_bgm dd audio_program, 0, bgm, 0
    envp dd 0                         

section .bss

section .text
    global play_bgm

play_bgm:
  mov eax, 11             
  mov ebx, audio_program
  mov ecx, argv_bgm
  mov edx, envp
  int 0x80    

  jmp play_bgm

  ret
