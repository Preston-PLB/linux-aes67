obj-m += aes67.o

CC=ccache gcc
KERN_DIR=/lib/modules/$(shell uname -r)/build/

host:
	$(MAKE) -C $(KERN_DIR) M=$$PWD modules
clean:
	make -C $(KERN_DIR) M=$(PWD) clean
help:
	make -C $(KERN_DIR) M=$(PWD) help
