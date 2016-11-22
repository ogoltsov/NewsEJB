package com.epam.ok.ws;



import com.epam.ok.model.Person;

import javax.jws.WebService;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

//@WebService(endpointInterface = "com.epam.ok.ws.PersonServiceImpl")
@WebService
public class PersonServiceImpl implements PersonService {

    private static Map<Integer, Person> persons = new HashMap<Integer, Person>();

    @Override
    public boolean addPerson(Person p) {
        if (persons.get(p.getId())!=null){
            return false;
        }else {
            persons.put(p.getId(), p);
            return true;
        }
    }

    @Override
    public boolean deletePerson(int id) {
        if (getPerson(id)!=null) {
            persons.remove(getPerson(id));
            return true;
        } else {
            return false;
        }
    }

    @Override
    public Person getPerson(int id) {
        if (persons.get(id)!=null) {
            return persons.get(id);
        } else {
            return null;
        }
    }

    @Override
    public Person[] getAllPersons() {
        Set<Integer> ids = persons.keySet();
        Person[] p = new Person[ids.size()];
        int i=0;
        for(Integer id : ids){
            p[i] = persons.get(id);
            i++;
        }
        return p;
    }
}
