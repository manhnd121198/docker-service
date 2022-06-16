package com.manh.kafkadocker.consumer;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class TestConsumer {

    @KafkaListener(topics = "server1.dbo.orders", groupId = "Group_id", containerFactory = "cfg")
    public void process (String message){
        System.out.println("Hello kafka order");
        System.out.println(message);
    }
}
