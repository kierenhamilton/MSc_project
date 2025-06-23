ENTRY(main)

MEMORY
{
   RAM   (rwx)  : ORIGIN = 0x00000000, LENGTH = 0x10000000
}



SECTIONS {
    . = 0x00000000; /* Start address */
    
    .text : {
        *(.text.main)
        *(.text.factorial)
        *(.text.binomialCoeff)
    } > RAM = 0
    
    .data : {
    	*(.data.main)
    	*(.data.factorial)
        *(.data.binomialCoeff)
    } > RAM
    

    __stack = ORIGIN(RAM) + LENGTH(RAM);


}

