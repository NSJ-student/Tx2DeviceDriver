obj-m := simple_mod.o

KDIR := /home/ubuntu/public_release/images
#KDIR := /lib/modules/$(shell uname -r)
#KDIR := /usr/src/linux-headers-4.4.38-tegra/
PWD := $(shell pwd)

all:
        $(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
        $(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean
