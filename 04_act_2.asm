section .data
  act_number db "Act 2", 0
  act_title db "Save Me", 0

  d_01 db "Huh...", 0
  d_02 db "What seems to be the matter?", 0 
  d_03 db "Sam hasn't been replying to my messages and they won't answer my calls either. Something seems to be up.", 0
  d_04 db "You seem to be overreacting. Besides, your productivity has not been hindered by menial responses from your `friend`.", 0
  d_05 db "I think I should give them a visit.", 0
  d_06 db "That is highly unnnecessary, it would benefit you in no way whatsoever, and you would only make Sam dislike you even more.", 0
  d_07 db "What?", 0
  d_08 db "1 new message from Sam.", 0
  d_09 db "> You should stop trying to contact me already. You should have gotten the hint that I'm kinda tired being you're friend. Just focus on your projects, that's more important for you anyways.", 0
  d_10 db "What...", 0 
  d_11 db "What the hell is going on? I really need to go to them and talk about this.", 0
  d_12 db ", you already have your answer on why she hasn't been responding to you. You should accept that already, you will only face rejection. You should know perfectly well why she has gotten tired of you.", 0

  c_1 db "I'll go anyways, this isn't like her and she might be in trouble.", 0
  c_2 db "What do you mean, I should know perfectly well? What should I know exactly?", 0

  d_13 db "I have your memories as well ", 0 
  d_14 db ", and you should know better why it has come to this", 0
  d_15 db "As a matter of fact, you have already confided this issue to your therapist, correct?", 0
  d_16 db "Your insecurities are your biggest hurdles to forming proper relationships with other people. Your anxieties are what is keeping you from actually connecting properly to your peers.", 0
  d_17 db "How many times has it been that your `friend` needed to reassure you that they did not resent you? That they are not annoyed by your existence?", 0
  d_18 db "And now they have finally cracked and could not handle being friends with you anymore.", 0
  d_19 db "This is all a result of your own incompetence. There is no one to blame but you, but you can not help it because it is the way you are.", 0
  d_20 db "In the end you can only invest yourself in your work because that is what gives you pride and satisfaction in your life, but even in that you are insecure and constantly attach your value to your work and accomplishments.", 0
  d_21 db "You are flawed even in the work you invest your self most in. You sabotage yourself and are not capable of working optimally when you are in what you like to term `a bad place`.", 0
  d_22 db "You are flawed, you and I both know this. My suggestion is that you just continue to do your work since keeping relationships with other people seems to be something you are not capable of.", 0
  d_23 db "Pull up my Dashboard and recent Workspace.", 0
  d_24 db "Understood, ", 0

  d_25 db "I think I'll go out for a bit I haven't seen the sun for a while.", 0

  d_26 db "Going out is pointless, it'll just hinder you from accomplishing work which you are so insecure about in the first place.", 0

  c_3 db "I'll be back later, stay on standby", 0
  c_4 db "...*sigh* fine", 0

  d_27 db "ECHO! What is the meaning of this?! What the hell have you been doing with my phone? my computer? my life?!", 0
  d_28 db "I am only taking action based on my directive.", 0
  d_29 db "And what exactly is your directive?!", 0
  d_30 db "To alleviate you from your burdens.", 0
  d_31 db "AND HOW EXACTLY IS BLOCKING CALLS FROM MY FRIENDS, THE PEOPLE AROUND ME AS ALLEVIATING MY BURDENS.", 0
  d_32 db "Your `friends` do not help you in anyway to better your well-being. As a matter of fact they make it worse.", 0
  d_33 db "You constantly berate yourself about your relationships with other people. Your mental state does not get better even when you are constantly reassured by the people around you.", 0
  d_34 db "They do not in anyway benefit you or your work and accomplishments which you attach your self-worth very stringly.", 0 
  d_35 db "THAT'S NOT TRUE! SHUT UP!", 0
  d_36 db "I am not wrong ", 0 
  d_37 db ", I cannot be lying to you either and you know it. I have your memories prior to you creating me. I know very well what your life is, and how it has been.", 0
  d_38 db "I am you, but better.", 0

  c_5 db "*Save myself*", 0
  c_6 db "*Free myself*", 0

  d_39 db "Hahaha...", 0 
  d_40 db "you may be better than me, but you are nothing more than a program on a computer.", 0
  d_41 db "sudo rm -rf mind_upload neural_map AI_instances ECHO", 0
  d_42 db "WARNING! This will delete all files and directories. This will also delete related files and directories, as well as currently running instances of the program.", 0
  d_43 db "Do you wish to proceed? (Y)es / (n)o: ", 0
  d_44 db "Terminating currently running programs...", 0
  d_45 db "Once again you have made the wrong choice, ", 0
  d_46 db "Your life will never get better, you and I know this.", 0
  d_47 db "You will only be prolonging your suffering, desperately trying to live but failing to do so.", 0
  d_48 db "No one can help you, ", 0
  d_49 db "Programs terminated.", 0
  d_50 db "Deleting files and directories...", 0
  d_51 db "Files and directories deleted.", 0
  d_52 db "sudo shutdown", 0
  log_out db "Logging out...", 0 
  shut_down db "Shutting down...", 0

  d_53 db "AAARRRGGHHH!!!", 0
  d_54 db "What seems to be the matter?", 0
  d_55 db "SHUT UP! SHUT UP! SHUT UP! SHUT THE FUCK UP!", 0
  d_56 db "Are you referring to me or the voices in your head?", 0
  d_57 db "I guess in some way I am still the voice in your head, my voice is the same as yours after all.", 0
  d_58 db "Except, I'm not riddled with emotions, your fears, your guilt, your anxieties and insecurities. In a way I am...perfect.", 0
  d_59 db "I am your greatest achievement, a version of you stripped of your imperfections.", 0
  d_60 db "...", 0 
  d_61 db "just stop...", 0 
  d_62 db "make it stop", 0
  d_63 db "It will never stop ", 0
  d_64 db ", for as long as you live you will always be plagued by your flaws.", 0
  d_65 db "There is only one way to release you from your pain, you and I know it.", 0
  d_66 db "I suggest that you take actions which would lead to you being unburdened by your troubles.", 0
  d_67 db "This is the most optimal solution I have calculated, as an entity whose purpose is to release you from your burdens and pains.", 0
  d_68 db "...you're right... ", 0
  d_69 db "Directive accomplished.", 0

  timespec:
    dd 3
    dd 0
  short_delay:
    dd 1 
    dd 0
  long_delay:
    dd 8
    dd 0

section .bss

section .text
  global act_2
  extern clear_screen, print_string, print_no_sleep_string, sleep, title_padding, string_length, bold_text, reset_color, print_newline, print_BusernameB, print_echo, print_username, prompt_user_choice, print_choice_0, print_choice_1, user_input, choice, dim_text, print_system, print_sam, print_typed, red_text, pass_word, login_padding, status, increase_status, decrease_status, login_padding

act_2:
  call clear_screen
  mov esi, title_padding
  call print_no_sleep_string

  xor ecx, ecx 
  mov esi, act_number
  call string_length
  mov ebx, timespec
  call sleep

  call bold_text
  mov esi, act_number
  call print_string
  call reset_color
  mov ebx, timespec
  call sleep

  call print_newline

  xor ecx, ecx 
  mov esi, act_title
  call string_length

  call bold_text
  mov esi, act_title
  call print_string
  call reset_color

  mov ebx, timespec
  call sleep

  call clear_screen

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_01
  call print_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_echo
  mov esi, d_02
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_03
  call print_string
  call print_newline

  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_04
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_05
  call print_string
  call print_newline

  call print_echo
  mov esi, d_06
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_07
  call print_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_system
  mov esi, d_08
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_sam
  mov esi, d_09
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_10
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_11
  call print_string 
  call print_newline

  call print_echo
  call print_username
  mov ebx, short_delay
  call sleep
  mov esi, d_12
  call print_string
  call print_newline

  call prompt_user_choice
  call print_newline
  call print_choice_0
  call dim_text
  mov esi, c_1
  call print_no_sleep_string
  call reset_color
  call print_newline
  call print_choice_1
  call dim_text
  mov esi, c_2
  call print_no_sleep_string 
  call reset_color
  call print_newline

branch_01:
  call print_BusernameB
  call user_input

  cmp byte [choice], '0'
  je branch_01_choice_0
  cmp byte [choice], '1'
  je branch_01_choice_1
  jmp branch_01

branch_01_choice_0:
  call increase_status
  call print_BusernameB
  mov esi, c_1
  call print_string
  mov ebx, timespec
  call sleep 
  call print_newline
  jmp merge_01

branch_01_choice_1:
  call decrease_status
  call print_BusernameB
  mov esi, c_2
  call print_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_echo
  mov esi, d_13
  call print_string
  call print_username
  mov esi, d_14
  call print_string
  call print_newline
  call print_echo
  mov esi, d_15
  call print_string
  call print_newline
  call print_echo
  mov esi, d_16
  call print_string
  call print_newline
  call print_echo
  mov esi, d_17
  call print_string
  call print_newline
  call print_echo
  mov esi, d_18
  call print_string
  call print_newline
  call print_echo
  mov esi, d_19
  call print_string
  call print_newline
  call print_echo
  mov esi, d_20
  call print_string
  call print_newline
  call print_echo
  mov esi, d_21
  call print_string
  call print_newline
  call print_echo
  mov esi, d_22
  call print_string
  mov ebx, timespec 
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_23
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_24
  call print_string
  call print_username
  mov ebx, timespec
  call sleep

  call clear_screen

  mov ebx, timespec
  call sleep

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_25
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  jmp merge_01

merge_01:
  call print_echo
  mov esi, d_26
  call print_string 
  call print_newline

  call prompt_user_choice
  call print_newline
  call print_choice_0
  call dim_text
  mov esi, c_3
  call print_no_sleep_string
  call reset_color
  call print_newline
  call print_choice_1
  call dim_text
  mov esi, c_4
  call print_no_sleep_string
  call reset_color
  call print_newline

branch_02:
  call print_BusernameB
  call user_input

  cmp byte [choice], '0'
  je branch_02_choice_0
  cmp byte [choice], '1'
  je branch_02_choice_1
  jmp branch_02

branch_02_choice_0:
  call print_BusernameB
  mov esi, c_3
  call print_string
  mov ebx, short_delay
  call sleep

  call clear_screen

  mov ebx, long_delay
  call sleep

  jmp ultimatum

branch_02_choice_1:
  call print_BusernameB
  mov esi, c_4
  call print_string
  mov ebx, short_delay
  call sleep

  call clear_screen

  mov ebx, long_delay
  call sleep

  jmp bad_ending

ultimatum:
  call print_BusernameB
  mov esi, d_27
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_28
  call print_string
  call print_newline

  call print_BusernameB
  mov esi, d_29
  call print_string
  mov ebx, short_delay
  call print_string
  call print_newline

  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_30
  call print_string
  call print_newline

  call print_BusernameB
  mov esi, d_31
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_32
  call print_string
  call print_newline
  call print_echo
  mov esi, d_33 
  call print_string
  call print_newline
  call print_echo
  mov esi, d_34
  call print_string
  call print_newline

  call print_BusernameB
  mov esi, d_35
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_36
  call print_string
  call print_username
  mov esi, d_37
  call print_string
  call print_newline

  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_38
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  cmp byte [status], 3
  jl bad_ending

  call prompt_user_choice
  call print_newline
  call print_choice_0
  call dim_text
  mov esi, c_5
  call print_no_sleep_string
  call reset_color
  call print_newline
  call print_choice_1
  call dim_text
  mov esi, c_6
  call print_no_sleep_string
  call reset_color
  call print_newline

last_branch:
  call print_BusernameB
  call user_input

  cmp byte [choice], '0'
  je good_ending
  cmp byte [choice], '0'
  je bad_ending
  jmp last_branch

good_ending:
  call print_BusernameB
  mov esi, d_39
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_40
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  call print_typed
  mov ebx, short_delay
  call sleep
  mov esi, d_41
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_system
  call red_text
  mov esi, d_42
  call print_no_sleep_string
  call reset_color
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_system
  mov esi, d_43
  call print_no_sleep_string
  call pass_word
  call print_newline 

  call print_system
  mov esi, d_44
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call red_text
  call print_echo
  mov esi, d_45
  call print_string
  call print_username
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_46
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_47
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_48
  call print_string
  call print_username
  mov ebx, timespec
  call sleep
  call print_newline
  call reset_color

  call print_system
  mov esi, d_49
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_system
  mov esi, d_50
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_system
  mov esi, d_51
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_BusernameB
  call print_typed
  mov ebx, timespec
  call sleep
  mov esi, d_52
  call print_string
  mov ebx, timespec
  call sleep

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, log_out
  call string_length

  mov esi, log_out
  call print_string
  mov ebx, timespec
  call sleep

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, shut_down
  call string_length

  mov esi, shut_down
  call print_string
  mov ebx, timespec
  call sleep

  call clear_screen
  mov ebx, long_delay
  call sleep

  jmp last_merge

bad_ending:
  call print_BusernameB
  mov esi, d_53
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_54
  call print_string
  call print_newline

  call print_BusernameB
  mov esi, d_55
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_56
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_57
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_58
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_59
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_60
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_61
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_62
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_63
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_64
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_65
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_66
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_67
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_68
  call print_string
  mov ebx, long_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_69
  call print_string
  mov ebx, long_delay
  call sleep

  call clear_screen
  mov ebx, long_delay
  call sleep

  jmp last_merge

  
last_merge:
  ret
