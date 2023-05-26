package com.logger_operation.logger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class Debug {
    private static final Logger logger = LoggerFactory.getLogger(Debug.class);

    @RequestMapping("/debug")
    public String welcome() {
        logger.debug("welcome to our page");
        return "welcome";
    }
}
