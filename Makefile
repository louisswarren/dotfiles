.PHONY: makeall
makeall:
	touch .Xresources.m4
	find -name '*.m4' | while read -r fname; do $(MAKE) "$${fname%.m4}"; done
	cat .Xresources

%: %.m4
	echo 'm4_define(HOST, euler) m4_define(`if_host'"'"', `m4_ifelse(HOST, `$$1'"'"', `$$2'"'"', `$$3'"'"')'"'"') m4_define(`if_plato'"'"', `m4_ifelse(HOST, `plato'"'"', `$$1'"'"', `$$2'"'"')'"'"') m4_define(`if_euler'"'"', `m4_ifelse(HOST, `euler'"'"', `$$1'"'"', `$$2'"'"')'"'"')'
	echo 'm4_define(HOST, euler)m4_define(`if_host'"'"', `m4_ifelse(HOST, `$$1'"'"', `$$2'"'"', `$$3'"'"')'"'"')m4_define(`if_plato'"'"', `m4_ifelse(HOST, `plato'"'"', `$$1'"'"', `$$2'"'"')'"'"')m4_define(`if_euler'"'"', `m4_ifelse(HOST, `euler'"'"', `$$1'"'"', `$$2'"'"')'"'"')m4_dnl' | m4 --prefix-builtins - "$<" > "$@"
