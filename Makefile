.PHONY: makeall
makeall:
	find -name '*.m4' | while read -r fname; do $(MAKE) "$${fname%.m4}"; done

%: %.m4
	echo 'm4_divert(-1)' \
	     'm4_define(HOST, esyscmd(`uname -n | tr -d "\n"'"'"'))' \
	     'm4_define(`if_host'"'"', `m4_ifelse(HOST, `$$1'"'"', `$$2'"'"', `$$3'"'"')'"'"')' \
	     'm4_define(`if_plato'"'"', `m4_ifelse(HOST, `plato'"'"', `$$1'"'"', `$$2'"'"')'"'"')' \
	     'm4_define(`if_euler'"'"', `m4_ifelse(HOST, `euler'"'"', `$$1'"'"', `$$2'"'"')'"'"')' \
	     'm4_divert(0)m4_dnl' \
	| m4 --prefix-builtins - "$<" > "$@"

