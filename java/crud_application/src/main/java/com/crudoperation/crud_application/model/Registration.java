package com.crudoperation.crud_application.model;

import jakarta.persistence.*;

@Entity
@Table(name = "StudentRegistration")

public class Registration {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "studentid")
    private  int studentid;
    @Column(name = "studentname")
    private String Name;
    @Column(name = "Studentaddess")
    private String Address;
    @Column(name = "Studentdepartment")
    private String department;

    public int getStudentid() {
        return studentid;
    }

    public void setStudentid(int studentid) {
        this.studentid = studentid;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
