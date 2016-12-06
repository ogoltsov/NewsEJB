package com.epam.ok.ws;

import com.epam.ok.model.News;

import javax.ejb.Local;
import javax.ejb.Remote;
import javax.jws.WebService;

@WebService
@Remote
public interface NewsSoapService extends SoapService<News> {
}
