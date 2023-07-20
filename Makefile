.PHONY: main boot run clean

main: syntax_check

init:
	ansible-galaxy install -f -p roles elo.helloworld

# check roles.
test:
	ansible-galaxy install -f -p tests/roles elo.helloworld
	ansible-playbook tests/test.yml -i tests/inventory --syntax-check

# check playbooks
syntax_check:
	ansible-playbook setup.yml --syntax-check

