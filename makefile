PDF_DIR = labs/mips_emulation
PDF_DIR = labs/intro
PDF_DIR = labs/single_cycle
PDF_DIR = labs/pipelined
PDF_DIR = labs/cache
PDF_DIR = labs/virtual_memory
PDF_DIR = labs/thread_scheduling
PDF_DIR += MIPS/Full_ISA
PDF_DIR += resources/gcc-mips
PDF_DIR += resources/brew
PDF_DIR += resources/markdown
PDF_DIR += resources/makefile
PDF_DIR += resources/cocotb
PDF_DIR += resources/VCD
PDF_DIR += resources/nmigen
PDF_DIR += the_big_picture
all:
	for dir in $(PDF_DIR) ; do \
		make -C  $$dir clean; \
		make -C  $$dir all; \
	done
