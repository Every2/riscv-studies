bin/hello: bin/ hello.asm
	riscv64-elf-as -o hello.o hello.asm
	riscv64-elf-ld -o bin/hello hello.o

bin/:
	mkdir bin

run: bin/hello
	qemu-riscv64 bin/hello

.PHONY: clean
clean:
	rm -rf bin
