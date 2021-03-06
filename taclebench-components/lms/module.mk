# Testcomponent code
TACLEBENCH_LMS_DIR=taclebench-components/lms/

TACLEBENCH_LMS_SOURCES_CC = lms.cc TaclelmsComponent.cc
TACLEBENCH_LMS_SOURCES_ASM = 
TACLEBENCH_LMS_OBJECTS = $(patsubst %o,$(OBJDIR)/$(TACLEBENCH_LMS_DIR)%o,$(TACLEBENCH_LMS_SOURCES_CC:%.cc=%.o)) $(patsubst %.oS,$(OBJDIR)/$(TACLEBENCH_LMS_DIR)%.oS,$(TACLEBENCH_LMS_SOURCES_ASM:%.S=%.oS))


COMPILE_OBJECTS += $(TACLEBENCH_LMS_OBJECTS)
LINKER_OBJECTS += $(TACLEBENCH_LMS_OBJECTS)

CFLAGS += -DTACLE_LMS