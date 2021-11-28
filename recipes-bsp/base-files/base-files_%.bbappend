# additional mount points
dirs755 += "/ubootenv"

# for production use
#WORKSPACE_OPTIONS = "sync,dirsync,barrier=1,data=journal,journal_checksum"

# for qemu / testing (much faster)
WORKSPACE_OPTIONS = "defaults"

do_install:append () {
    cat >> ${D}${sysconfdir}/fstab <<EOF

# from base-files_%.bbappend
LABEL=workspace	/sdi	ext4	noatime,${WORKSPACE_OPTIONS}	0 0
LABEL=uboot  /ubootenv vfat    defaults 0 0

EOF
}

