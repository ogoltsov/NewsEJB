package com.epam.ok.action;

import com.epam.ok.service.ServiceException;

public class ActionException extends Exception {
    public ActionException(Exception e, String m) {
        super(m, e);
    }
}
