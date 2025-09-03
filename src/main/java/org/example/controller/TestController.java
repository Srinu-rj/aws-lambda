/**
 * Author: Sreenivasa Raju
 * User:dnsri
 * Date:8/29/2025
 * Time:12:44 PM
 */

package org.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @GetMapping("/test")
    public String test(){
        return "Hello All";
    }

    @GetMapping("/wellcome")
    public String wellcome(){
        return "Wellcome to Aws Lambda Spring Boot Application";
    }
}
