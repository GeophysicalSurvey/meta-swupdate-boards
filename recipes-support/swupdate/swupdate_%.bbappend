FILESEXTRAPATHS_append := "${THISDIR}/${PN}:"

PACKAGECONFIG_CONFARGS = ""

SRC_URI += " \
     file://0001-uboot-downgrade-to-2013.10.patch \
     file://swupdate.cfg \
     "

do_install_append() {
    install -d ${D}${sysconfdir}
    install -m 644 ${WORKDIR}/swupdate.cfg ${D}${sysconfdir}
}

FILES_${PN} += "${sysconfdir}/swupdate.cfg"
