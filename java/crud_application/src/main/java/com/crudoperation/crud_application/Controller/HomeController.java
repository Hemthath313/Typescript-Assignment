package com.crudoperation.crud_application.Controller;

import com.crudoperation.crud_application.Service.StudentService;
import com.crudoperation.crud_application.model.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/homepage")

public class HomeController {
    @Autowired
    StudentService studentService;

    @PostMapping("/Registration")
    public Registration addvalues (@RequestBody Registration regi){

        return this.studentService.adddata(regi);

     }

     @GetMapping("/getrecords")
    public List<Registration> getdata(){
        return this.studentService.GetALLrecords();
     }

     @PutMapping("/updaterecords/{id}")
    public  Registration updaterecords(@PathVariable(value = "id")Integer Identity,@RequestBody Registration regi){
        return this.studentService.updaterecord(Identity,regi);
     }

     @DeleteMapping("/deleterecords/{id}")
    public String deleterecords(@PathVariable(value = "id") Integer id){
        return this.studentService.deleterecords(id);
     }




}
