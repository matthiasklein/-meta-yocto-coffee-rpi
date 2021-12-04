FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# additional dependencies required to run RAUC on the target
RDEPENDS:${PN} += "e2fsprogs-mke2fs"

