package com.rest.common.service;

import org.springframework.stereotype.Service;

import com.rest.common.spring.exetend.PropertyConfig;

@Service
public class PropertieService {

    @PropertyConfig
    public String REPOSITORY_PATH;
    
    @PropertyConfig
    public String IMAGE_BASE_URL;

}
