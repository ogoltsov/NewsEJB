package com.epam.ok.ws;

import com.epam.ok.model.News;

import javax.ejb.Local;
import javax.jws.WebService;

@WebService
@Local
public interface NewsSoapService extends SoapService<News> {
}
