M4SRC := $(shell find -name '*.m4')
M4OBJ := $(patsubst %.m4,%,$(M4SRC))

.PHONY: makegnu
makegnu: $(M4OBJ)

.PHONY: makeposix
makeaposix:
	find -name '*.m4' | while read -r fname; do echo "$${fname%.m4}"; done | xargs $(MAKE)

%: %.m4
	@echo "make $@"
	@echo 'm4_divert(-1)' \
	      'm4_define(HOST, esyscmd(`uname -n | tr -d "\n"'"'"'))' \
	      'm4_define(`if_host'"'"', `m4_ifelse(HOST, `$$1'"'"', `$$2'"'"', `$$3'"'"')'"'"')' \
	      'm4_define(`if_plato'"'"', `m4_ifelse(HOST, `plato'"'"', `$$1'"'"', `$$2'"'"')'"'"')' \
	      'm4_define(`if_euler'"'"', `m4_ifelse(HOST, `euler'"'"', `$$1'"'"', `$$2'"'"')'"'"')' \
	      'm4_divert(0)m4_dnl' \
	    | m4 --prefix-builtins - "$<" > "$@"

