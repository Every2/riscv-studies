bin/factorial: bin/ factorial.asm
	nasm -f elf32 -o out.o factorial.asm
	ld -m elf_i386 out.o -o bin/out

bin/:
	mkdir bin

run: bin/exit
	./bin/out

.PHONY: clean
clean:
	rm -rf bin
