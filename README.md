# HAService

How to start the HAService application
---

1. Run `mvn verify` (was `mvn clean install`) to build the application
1. Start service with `java -jar target/homeservice-1.0-SNAPSHOT.jar server config.yml`
1. To check that the service is running: `http://localhost:8090`

Health Check
---

To see your applications health enter url `http://localhost:8081/healthcheck`
