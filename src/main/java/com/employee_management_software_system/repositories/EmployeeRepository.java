package com.employee_management_software_system.repositories;

import com.employee_management_software_system.models.Employee;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends CrudRepository <Employee, Long> {




}
