package com.example.lab4.controller;

import com.example.lab4.entity.Employee;
import com.example.lab4.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;

    @GetMapping("/hien-thi")
    public String showList(Model model) {
        model.addAttribute("list", employeeService.getAll());
        return "hien-thi";
    }

    @PostMapping("/them")
    public String addEmployee(Employee employee) {
        employeeService.add(employee);
        return "redirect:/employee/hien-thi";
    }

    @GetMapping("/sua/{id}")
    public String showEdit(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("employee", employeeService.findById(id).get());
        return "sua";
    }

    @PostMapping("/sua")
    public String editEmployee(Employee employee) {
        employeeService.update(employee);
        return "redirect:/employee/hien-thi";
    }

    @GetMapping("/xoa/{id}")
    public String deleteEmployee(@PathVariable("id") Integer id) {
        employeeService.delete(id);
        return "redirect:/employee/hien-thi";
    }
}
