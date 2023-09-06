package com.employee_management_software_system.controllers;


import com.employee_management_software_system.models.Employee;
import com.employee_management_software_system.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/home")
    public String homePage( Employee employee){
        return "home";
    }

    @GetMapping("/employees")
    public String employess (Model model){
        List<Employee> employeeList = employeeService.getEmployee();
        model.addAttribute("employee",employeeList);
        return "employees";
    }


    @GetMapping("/registerEmployee")
    public String newEmployee(@ModelAttribute("employee") Employee employee , Principal principal){

        return "registerEmployee";
    }

    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee")Employee employee , Principal principal){

        employeeService.createEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/update/{id}")
    public String updateEmployee (@PathVariable("id")Long id, Principal principal, Model model){
       Employee employee = employeeService.findEmployee(id).get();
       model.addAttribute("employee", employee);
       return "updateEmployee";
    }

    @PutMapping("/update/{id}")
    public String updateEmployee(@ModelAttribute("employee") Employee employee , Principal principal) {
        employeeService.updateEmployee(employee);
        return "redirect:/employees";
    }

    @DeleteMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable("id")Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees";
    }

    @GetMapping("/about")
    public String about(){
        return "about";
    }


}
