package com.crudoperation.crud_application.Service;

import com.crudoperation.crud_application.Exception.RequestNotFoundException;
import com.crudoperation.crud_application.Repositry.Jparepo;
import com.crudoperation.crud_application.model.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class StudentService {
    @Autowired
    Jparepo jpa;
    public Registration adddata(Registration regi){
        return  this.jpa.save(regi);
    }
    public List<Registration> GetALLrecords(){
        return this.jpa.findAll();
    }

    public Registration updaterecord(Integer Id,Registration registration){
         Registration oldrecords=this.jpa.findById(Id).orElseThrow(()-> new RequestNotFoundException("user not found"));

        oldrecords.getName();
        oldrecords.getAddress();
        oldrecords.getDepartment();
        return this.jpa.save(oldrecords);

    }


     public String deleterecords(Integer sid) {
     this.jpa.deleteById(sid);
        return "successfully deleted";
    }




}