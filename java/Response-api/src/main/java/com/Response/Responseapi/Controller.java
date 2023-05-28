package com.Response.Responseapi;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class Controller {

    @GetMapping("/resource")
    public ResponseEntity<String> getResource() {
        // successful request
        return ResponseEntity.ok("Resource retrieved successfully");
    }

    @PostMapping("/resource")
    public ResponseEntity<String> createResource(@RequestBody String requestBody) {
        // Simulating resource creation
        if (isValid(requestBody)) {
            // Resource created successfully
            return ResponseEntity.status(HttpStatus.CREATED).body("Resource created");
        } else {
            // Invalid request
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid request");
        }
    }

    @DeleteMapping("/resource/{id}")
    public ResponseEntity<String> deleteResource(@PathVariable("id") String id) {
        // Simulating resource deletion
        if (exists(id)) {
            // Resource found and deleted
            return ResponseEntity.noContent().build();
        } else {
            // Resource not found
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Resource not found");
        }
    }

    // Other methods and logic

    private boolean isValid(String requestBody) {
        // Validation logic
        return true;
    }

    private boolean exists(String id) {
        // Check if resource exists
        return true;
    }
}

