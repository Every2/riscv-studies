bin/hello: bin/ load_number.asm
	riscv64-elf-as -o out.o load_number.asm
	riscv64-elf-ld -o bin/out out.o

bin/:
	mkdir bin

run: bin/hello
	qemu-riscv64 bin/out

.PHONY: clean
clean:
	rm -rf bin
