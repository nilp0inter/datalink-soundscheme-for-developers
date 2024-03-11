%.spc: %.asm
	rm -f $@
	asm6805 $< $@
