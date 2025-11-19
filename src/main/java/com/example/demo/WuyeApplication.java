package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WuyeApplication {

    public static void main(String[] args) {
        SpringApplication.run(WuyeApplication.class, args);
        System.out.println("=======================================启动成功=======================================");
        System.out.println("访问 http://localhost:8081/ 以打开项目");
    }

}
