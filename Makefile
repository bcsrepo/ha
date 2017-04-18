init: requirements develop

install:
	# ??? to install service for running

develop:
	# ???

lint:
	# sonar ...

setup:
	# mvn ...

requirements:
	# ansible ....

test: clean setup develop lint
	# junit ...?

unit_only:
	# junit ...?

integration_only:
	# junit ...?

clean:
	rm -rf blah/ other_blah/ *.some_ext/ **/*.xxx
	cat files.txt | xargs rm -rf
