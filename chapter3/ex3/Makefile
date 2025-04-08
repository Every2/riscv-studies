bin/maximum: bin/ maximum.asm
	nasm -f elf32 -o out.o maximum.asm
	ld -m elf_i386 out.o -o bin/out

bin/:
	mkdir bin

run: bin/maximum
	./bin/out

.PHONY: clean
clean:
	rm -rf bin
