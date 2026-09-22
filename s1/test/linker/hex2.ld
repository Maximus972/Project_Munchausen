ENTRY(_start)
SECTIONS {
    . = 0x10074;
    .text : { *(.text) }

    . = 0x18000;
    .bss (NOLOAD) : { . = . + 0x8000; }
}
