package com.epam.ok.ws;

//@WebService(endpointInterface = "com.epam.ok.ws.HelloWorldImpl")
public class HelloWorldImpl implements HelloWorld{

    @Override
    public String getHelloWorldAsString(String name) {
        return "Hello World JAX-WS " + name;
    }

}