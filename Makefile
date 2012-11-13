prefix ?= /usr

all:

install:
	mkdir -p $(DESTDIR)/etc/init.d
	mkdir -p $(DESTDIR)$(prefix)/sbin
	mkdir -p $(DESTDIR)$(prefix)/lib/puavo-firewall
	mkdir -p $(DESTDIR)$(prefix)/share/puavo-firewall/templates
	install -o root -g root -m 755 client-connect \
	  $(DESTDIR)$(prefix)/lib/puavo-firewall
	install -o root -g root -m 755 client-disconnect \
	  $(DESTDIR)$(prefix)/lib/puavo-firewall
	install -o root -g root -m 644 templates/vpn.conf.erb \
	  $(DESTDIR)$(prefix)/share/puavo-firewall/templates
	install -o root -g root -m 755 shorewall/init \
	  $(DESTDIR)/etc/init.d/puavo_shorewall

clean:

