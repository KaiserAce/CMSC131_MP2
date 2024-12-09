ASM_FILES = 01_start.asm 02_intro.asm 03_act_1.asm 04_act_2.asm
OBJ_FILES = $(ASM_FILES:.asm=.o)
ASM = nasm
ASM_FLAGS = -f elf32
LD = ld
LD_FLAGS = -m elf_i386
OUTPUT = echoes_of_the_mind


run: $(OUTPUT)
	./$(OUTPUT)

$(OUTPUT): $(OBJ_FILES)
	$(LD) $(LD_FLAGS) -o $(OUTPUT) $(OBJ_FILES)

%.o: %.asm
	$(ASM) $(ASM_FLAGS) $< -o $@


clean:
	rm -f $(OBJ_FILES) $(OUTPUT)

start:
	wsl --distribution Ubuntu
