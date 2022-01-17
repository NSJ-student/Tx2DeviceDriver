#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>

int simple_mod_init(void) {
        printk("simple module loaded\n");
        return 0;
}

void simple_mod_exit(void) {
        printk("simple module unloaded\n");
        return;
}

module_init(simple_mod_init);
module_exit(simple_mod_exit);
MODULE_LICENSE("GPL");
~
