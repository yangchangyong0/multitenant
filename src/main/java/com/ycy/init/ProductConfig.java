package com.ycy.init;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * ClassName: ProductConfig Function:  TODO Date:      2019-07-17 23:01 author     ycy version
 * V1.0
 */
@Configuration
@ComponentScan("com.ycy")
@Import(SpringMVCConfig.class)
public class ProductConfig {
}
