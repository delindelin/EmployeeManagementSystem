package com.employee_management_software_system.services;


import com.employee_management_software_system.models.Employee;
import com.employee_management_software_system.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public void createEmployee (Employee employee) {employeeRepository.save(employee);}

    public List<Employee> getEmployee(){return (List<Employee>) employeeRepository.findAll();}

    public Optional<Employee> findEmployee (Long id){ return employeeRepository.findById(id);}

    public void updateEmployee(Employee employee){
        employeeRepository.save(employee);
    }
    public void deleteEmployee(Long id){
        employeeRepository.deleteById(id);
    }
}
