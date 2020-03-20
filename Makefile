rtk_hciattach:hciattach.c hciattach_rtk.o  
	$(CC) -o rtk_hciattach hciattach.c hciattach_rtk.o  

hciattach_rtk.o:hciattach_rtk.c
	$(CC) -c hciattach_rtk.c

clean:
	rm -f *.o  rtk_hciattach

install:
	install -d -m 755 $(DESTDIR)/usr/sbin
	install -D -m 755 rtk_hciattach $(DESTDIR)/usr/sbin
	install -d -m 755 $(DESTDIR)/lib/firmware/rtl_bt
	install -D -m 644 rtlbt_fw $(DESTDIR)/lib/firmware/rtl_bt
	install -D -m 644 rtlbt_fw_new $(DESTDIR)/lib/firmware/rtl_bt
	install -D -m 644 rtlbt_config $(DESTDIR)/lib/firmware/rtl_bt
