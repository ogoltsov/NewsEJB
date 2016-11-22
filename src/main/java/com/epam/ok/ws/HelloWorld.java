package com.epam.ok.ws;

//@WebService
//@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use= SOAPBinding.Use.LITERAL) //optional
public interface HelloWorld{

//    @WebMethod
    String getHelloWorldAsString(String name);

}
