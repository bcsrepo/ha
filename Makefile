init: requirements develop

install:
	# ??? to install service for running
	# cp -p ...

develop: clean setup
	# ???

lint:
	# sonar ...

setup: clean
	# mvn ...

requirements:
	# ansible ....

test:
	mvn test

test_unit:
	mvn "-Dtest=!Integration*Test" test

test_integration:
	mvn "-Dtest=Integration*Test" test

test_running:
	mvn verify ; \
	echo; echo "------------BUILT, STARTING-------------"; echo; \
	{ java -jar target/homeservice-1.0-SNAPSHOT.jar server config.yml & }; \
	pid=$$!; \
	sleep 4; \
	curl localhost:8090; \
	curl_return_code=$$?; \
	echo; echo "------------CURL RETURNED ($$curl_return_code)---------"; echo; \
	kill $$pid; \
	exit $$curl_return_code

clean:
	#rm -rf blah/ other_blah/ *.some_ext/ **/*.xxx
	# cat files.txt | xargs rm -rf
	mvn clean
