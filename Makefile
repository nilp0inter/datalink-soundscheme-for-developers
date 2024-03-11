quietdl.spc:

%.spc: %.asm
	rm -f $@
	asm6805 $< $@
