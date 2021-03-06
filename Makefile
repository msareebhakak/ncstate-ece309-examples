
DIRS = lecture01 lecture02 lecture03 lecture04 lecture05 lecture06 lecture07 lecture08 lecture12 lecture13 lecture14 lecture15 lecture16 lecture17

#lecture09 lecture10 lecture11

.PHONY = $(addsuffix -all,$(DIRS)) $(addsuffix -test,$(DIRS)) $(addsuffix -test,$(DIRS))

all: $(addsuffix -all,$(DIRS))

test: all $(addsuffix -test,$(DIRS))

clean: $(addsuffix -clean,$(DIRS))

$(addsuffix -all,$(DIRS)):
	make -C $(subst -all,,$@) all

$(addsuffix -test,$(DIRS)):
	make -C $(subst -test,,$@) test

$(addsuffix -clean,$(DIRS)):
	make -C $(subst -clean,,$@) clean
