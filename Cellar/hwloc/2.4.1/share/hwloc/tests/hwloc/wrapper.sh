#!/bin/sh
#-*-sh-*-

#
# Copyright © 2012-2020 Inria.  All rights reserved.
# See COPYING in top-level directory.
#

HWLOC_top_builddir="/private/tmp/hwloc-20210228-57939-1flsho3/hwloc-2.4.1"
xmlbuffer=xmlbuffer

HWLOC_PLUGINS_PATH=${HWLOC_top_builddir}/hwloc/.libs
export HWLOC_PLUGINS_PATH

HWLOC_DEBUG_CHECK=1
export HWLOC_DEBUG_CHECK

HWLOC_LIBXML_CLEANUP=1
export HWLOC_LIBXML_CLEANUP

if test "`basename $1`" = "$xmlbuffer"; then
    "$@" 1 1
    "$@" 0 1
    "$@" 1 0
    "$@" 0 0
else
    "$@"
fi
