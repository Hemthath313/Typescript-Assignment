package com.crudoperation.crud_application.Repositry;

import com.crudoperation.crud_application.model.Registration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface Jparepo extends JpaRepository<Registration,Integer> {
}
