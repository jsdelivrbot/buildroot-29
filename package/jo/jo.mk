################################################################################
#
# jo
#
################################################################################

JO_VERSION = 1.0
JO_SITE = https://github.com/jpmens/jo/releases/download/v$(JO_VERSION)
JO_LICENSE = MIT (json.[ch]), GPLv2+ (rest)
JO_LICENSE_FILES = COPYING
# don't build man pages
JO_CONF_ENV = ac_cv_path_PANDOC=''

$(eval $(autotools-package))
