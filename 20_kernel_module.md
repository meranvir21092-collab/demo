# Practical 20: Introduction to Writing a Device Driver / Kernel Module

## Aim
Study the structure and build process of a basic Linux kernel module.

A kernel module runs with kernel privileges. Only build and load trusted code, preferably in a disposable virtual machine. The example below only logs messages; it does not access hardware.

## Source: `hello_module.c`
```c
#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Linux Lab");
MODULE_DESCRIPTION("A minimal hello-world kernel module");

static int __init hello_init(void)
{
    pr_info("hello_module: module loaded\\n");
    return 0;
}

static void __exit hello_exit(void)
{
    pr_info("hello_module: module unloaded\\n");
}

module_init(hello_init);
module_exit(hello_exit);
```

## Makefile
Save this as `Makefile` in the same directory (the command lines under targets must begin with a TAB):
```make
obj-m += hello_module.o

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

## Build and inspect
```bash
sudo apt install build-essential linux-headers-$(uname -r)
make
modinfo hello_module.ko
```

## Load and unload (only in a test VM)
```bash
sudo insmod hello_module.ko
lsmod | grep hello_module
sudo dmesg | tail
sudo rmmod hello_module
sudo dmesg | tail
```
If headers for the running kernel are unavailable, install the matching headers for that kernel. Secure Boot/module-signing policy may prevent loading an unsigned module.

## Result
The basic structure, compilation, loading, and unloading of a Linux kernel module were studied.
