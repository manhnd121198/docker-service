package com.manh.kafkadocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin/docker")
public class TestController {

    @GetMapping(value = "/test")
    public String test(@RequestParam String param) {
        return "Hello docker i am " + param;
    }
}
