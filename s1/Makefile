CP := clang
CP_FLAGS := --target=riscv32 -march=rv32i -mabi=ilp32 -mno-relax -x assembler -c hex2.riscv -o hex2.o

all: build

build: link

link: compile
	ld.lld -T test/linker/hex2.ld -o test/bin/hex2 test/obj/hex2.o

compile:
	mkdir test/obj/
	clang --target=riscv32 -march=rv32i -mabi=ilp32 -mno-relax -x assembler -c test/asm/hex2.riscv -o test/obj/hex2.o

run: build
	qemu-riscv32 ./test/bin/hex2 test/test_input_file.txt test/test_hex

clear:
	rm -rf test/obj/ test/test_hex
