# Copyright (C) 2013-2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_DIR := $(GET_LOCAL_DIR)

TARGET := vexpress-a15

#
# GLOBAL definitions
#

# force enums to be 4bytes
GLOBAL_CFLAGS += -mabi=aapcs-linux

GLOBAL_DEFINES += \
	WITH_MMU_RELOC=1 \
	WITH_LIB_SM_MONITOR=1

#
# Modules to be compiled into lk.bin
#
MODULES += \
	lib/sm \
	lib/trusty \

#
# user tasks to be compiled into lk.bin
#

# prebuilt
TRUSTY_PREBUILT_USER_TASKS :=

# compiled from source
TRUSTY_ALL_USER_TASKS := \
	sample/skel \
	sample/skel2\

EXTRA_BUILDRULES += make/trusty-user-tasks.mk
