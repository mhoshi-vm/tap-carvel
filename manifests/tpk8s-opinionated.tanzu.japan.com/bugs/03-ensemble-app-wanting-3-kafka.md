```
Caused by: org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 3 larger than available brokers: 1.
05:30:41.874Z [thread='main' user='' org='' trace=''] ERROR com.vmware.ensemble.assessment.AppMetadataIngestionApp - Failed to start com.vmware.ensemble.assessment.AppMetadataIngestionApp
java.lang.IllegalStateException: Could not configure topics
	at org.springframework.kafka.core.KafkaAdmin.initialize(KafkaAdmin.java:282) ~[spring-kafka-3.2.3.jar:3.2.3]
	at org.springframework.kafka.core.KafkaAdmin.afterSingletonsInstantiated(KafkaAdmin.java:238) ~[spring-kafka-3.2.3.jar:3.2.3]
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.preInstantiateSingletons(DefaultListableBeanFactory.java:986) ~[spring-beans-6.1.14.jar:6.1.14]
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:971) ~[spring-context-6.1.14.jar:6.1.14]
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:625) ~[spring-context-6.1.14.jar:6.1.14]
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146) ~[spring-boot-3.3.5.jar:3.3.5]
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754) ~[spring-boot-3.3.5.jar:3.3.5]
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456) ~[spring-boot-3.3.5.jar:3.3.5]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:335) ~[spring-boot-3.3.5.jar:3.3.5]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1363) ~[spring-boot-3.3.5.jar:3.3.5]
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1352) ~[spring-boot-3.3.5.jar:3.3.5]
	at com.vmware.ensemble.assessment.AppMetadataIngestionApp.main(AppMetadataIngestionApp.java:22) [ensemble-app-metadata-ingestion.jar:0.0.1]
Caused by: org.springframework.kafka.KafkaException: Failed to create topics
	at org.springframework.kafka.core.KafkaAdmin.addTopics(KafkaAdmin.java:577) ~[spring-kafka-3.2.3.jar:3.2.3]
	at org.springframework.kafka.core.KafkaAdmin.addOrModifyTopicsIfNeeded(KafkaAdmin.java:424) ~[spring-kafka-3.2.3.jar:3.2.3]
	at org.springframework.kafka.core.KafkaAdmin.initialize(KafkaAdmin.java:274) ~[spring-kafka-3.2.3.jar:3.2.3]
	... 11 more
Caused by: org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 3 larger than available brokers: 1.

```