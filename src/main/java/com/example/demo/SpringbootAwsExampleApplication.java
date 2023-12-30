package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootAwsExampleApplication {
	
	@GetMapping("/")
	public String home() {
		String message = "welcome to aws, i'm from the jar that you created.";
		return message;
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringbootAwsExampleApplication.class, args);
	}

}
