package com.jeremy.spring.security.repository;

import com.jeremy.spring.security.model.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends CrudRepository<Customer,Long> {

    Optional<Customer> findByEmail(String email);

    Optional<Customer> findRoleByEmail(String email);

}
