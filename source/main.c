#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include "aclib.h"

extern void* nesinfo_data_start;
extern void* my_malloc_current[2];
extern void* my_zelda_malloc_align(unsigned long size, int align);
extern void my_zelda_free(void *ptr);

/*
 * Hooks call to my_zelda_malloc_align
 */
void __entry(void *ptr) {
    OSReport("NES TAG LOADER CALLED");

    if (nesinfo_data_start) {
        OSReport("nesinfo_data_start: %p", nesinfo_data_start);
    } else {
        OSReport("ERROR: nesinfo_data_start is NULL");
    }

    OSReport("NES TAG LOADER EXITING");

    // Restore the my_malloc pointer
    my_malloc_current[1] = &my_zelda_free;

    // Do the original function call
    my_zelda_free(ptr);
}
