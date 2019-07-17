package com.ycy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * ClassName: TestController Function:  TODO Date:      2019-07-17 23:04 author     ycy version
 * V1.0
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping("/do")
    @ResponseBody
    public String test() {
        System.out.println("测试方法执行！");
        return "ok!";
    }
}
