MEMORY
{
    FLASH(rx)  : ORIGIN = 0x08000000, LENGTH = 512K
    SRAM(rwx)  : ORIGIN = 0x20000000, LENGTH = 128K
}

SECTIONS
{
    .text :
    {
        *(.vectors)
        (.text)
    } > FLASH

    .data :
    {
        . = ALIGN(4);
        *(.data)
        . = ALIGN(4);
    } > SRAM AT > FLASH
}
