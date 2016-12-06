package com.epam.ok.action;

public class ActionException extends Exception {
    public ActionException(Exception e, String m) {
        super(m, e);
    }
}
