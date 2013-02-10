Yet Another Gentoo Overlay
===========================

**Yago** is just another boring gentoo overlay.

Using Yago
----------

Cloning the repository into your favorite directory:

    # mkdir -p /usr/local/overlays
    # cd /usr/local/overlays
    # git clone git://github.com/tled/yago.git

Add to ```/etc/portage/make.conf```:

    PORTDIR_OVERLAY="
    /usr/local/yago
    ${PORTDIR_OVERLAY}
    "
