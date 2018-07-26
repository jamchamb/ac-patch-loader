ENTRY(__entry)
SECTIONS
{
        . = 0x80003970;
        .text . : {
               *(.text.__entry);
               *(.text*);
        }

        memcpy = 0x80003490;
        memcmp = 0x8009CFF4;

        sprintf = 0x8005CE48;
        snprintf = 0x8009D454;

        strlen = 0x8009F84C;
        strncpy = 0x8009F750;

        debug_print_flg = 0x81294010;
        debug_print2_buffer = 0x81294018;
        debug_print2_count = 0x81294014;

        OSGetTime = 0x8007F6F8;
        OSReport = 0x8005A750;

        Debug_mode_output = 0x8039816C;

        my_zelda_malloc_align = 0x8062D480;
        my_zelda_free = 0x8062D4CC;
        my_malloc_current = 0x806D4B98;
        nesinfo_data_start = 0x801F6C64;

        ICInvalidateRange = 0x80079CAC;
        DCInvalidateRange = 0x80079B54;
}
