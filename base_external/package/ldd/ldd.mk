
################################################################################
#
# ldd
#
################################################################################

# Pinned to the HEAD of assignment-7-mu2d2 main at time of package creation.
# Update this SHA when changes are pushed to the ldd3 fork.
LDD_VERSION = cca2f7ebc8484e19011a013f20d91f16042af8a5
# NOTE: Must use SSH URL (git@github.com:...) so the automated build/CI
# system can authenticate using SSH keys rather than HTTPS credentials.
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-mu2d2.git
LDD_SITE_METHOD = git

# MODULE_SUBDIRS instructs Buildroot's kernel-module infrastructure to build
# each listed subdirectory as a kernel module tree.  Buildroot will invoke:
#   make -C $(LINUX_DIR) M=$(@D)/<subdir> modules
# for each entry, then run modules_install automatically.  This mirrors
# the MODULE_SUBDIRS convention described in Buildroot documentation and
# avoids the need to write custom BUILD_CMDS / INSTALL_TARGET_CMDS.
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
