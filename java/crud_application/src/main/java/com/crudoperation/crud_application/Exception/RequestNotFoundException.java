package com.crudoperation.crud_application.Exception;

public class RequestNotFoundException extends RuntimeException{

    public RequestNotFoundException(String Error){
        super(Error);
    }

}
