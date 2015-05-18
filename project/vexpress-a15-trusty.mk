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

MODULES += \
	lib/sm \
	lib/trusty \
	app/tests \

USER_TASKS := sample/skel
USER_TASKS += sample/skel2

USER_TASK_LINKER_SCRIPT := $(BUILDDIR)/user_task-trusty.ld
USER_TASK_CRTBEGIN_OBJS := $(BUILDDIR)/user/crtbegin.o
USER_TASK_CRTEND_OBJS := $(BUILDDIR)/user/crtend.o

# force enums to be 4bytes
GLOBAL_CFLAGS += -mabi=aapcs-linux

GLOBAL_DEFINES += \
	WITH_MMU_RELOC=1 \
	WITH_LIB_SM_MONITOR=1
