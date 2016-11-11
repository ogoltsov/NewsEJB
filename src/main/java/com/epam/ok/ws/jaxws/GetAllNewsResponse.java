
package com.epam.ok.ws.jaxws;

import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getAllNewsResponse", namespace = "http://ws.ok.epam.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getAllNewsResponse", namespace = "http://ws.ok.epam.com/")
public class GetAllNewsResponse {

    @XmlElement(name = "return", namespace = "")
    private List<com.epam.ok.model.News> _return;

    /**
     * 
     * @return
     *     returns List<News>
     */
    public List<com.epam.ok.model.News> getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(List<com.epam.ok.model.News> _return) {
        this._return = _return;
    }

}
