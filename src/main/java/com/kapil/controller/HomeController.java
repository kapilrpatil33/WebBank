package com.kapil.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kapil.customer.Customer;
import com.kapil.customerDao.CustomerDao;

@Controller
public class HomeController {

    @Autowired
    private CustomerDao customerDao;

    @RequestMapping("/")
    public String home() {
        System.out.println("Opening index page..");
        return "index";
    }

    @RequestMapping(path = "/LoginAdmin", method = RequestMethod.POST)
    public String adminLogin(HttpServletRequest request, Model model) {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        if (email.equals("kapil@gmail.com") && pass.equals("12345")) {
            return "Welcome";
        } else {
            return "redirect:/"; 
        }
    }

    @RequestMapping("/addAccount")
    public String addAccount() {
        System.out.println("Opening Register page..");
        return "Register"; // Corrected from "Reister" to "Register"
    }

    @RequestMapping(path = "/addNewAccount", method = RequestMethod.POST)
    public String addNewAccount(@ModelAttribute Customer customer) {
        int i = customerDao.addCustomer(customer);
        if (i > 0) {
            return "Welcome";
        } else {
            return "Error";
        }
    }

    @RequestMapping("/deleteUser")
    public String deleteAccount() {
        System.out.println("Opening DeleteUser page..");
        return "DeleteUser";
    }
    
    @Transactional
    @RequestMapping(path = "/deleteAccount", method = RequestMethod.POST)
    public String deleteAccount(HttpServletRequest request, Model model) {
        int accNo = Integer.parseInt(request.getParameter("accNo"));
        Customer customer = customerDao.getCustomer(accNo);
        if (customer != null) {
            customerDao.deleteCustomer(accNo);
            System.out.println("Account deleted successfully");
        } else {
            System.out.print("Account not found");
        }
        return "redirect:/viewAllAccount";
    }

    @RequestMapping("/viewAllAccount")
    public String viewAllAccounts(Model model) {
        System.out.println("Opening ViewAllUser page..");
        List<Customer> customers = customerDao.getAllCustomers();
        model.addAttribute("customerlist",customers);
        return "ViewAllUser";
    }
    @RequestMapping("/viewUser")
    public String viewUser(Model model,HttpServletRequest request) {
    	
        return "ViewUser";
    }
    

    @RequestMapping("/viewAccount")
    public String viewAccount(Model model,HttpServletRequest request) {
    	int accNo = Integer.parseInt(request.getParameter("accNo"));
        Customer customer = customerDao.getCustomer(accNo);
        model.addAttribute("customer",customer);
        return "ViewUser";
    }

    @RequestMapping("/Deposit")
    public String depositAmount() {
        System.out.println("Opening DepositAmount page..");
        return "DepositAmount";
    }
    @Transactional
    @RequestMapping(path = "/DepositAmount", method = RequestMethod.POST)
    public String depositAmountinacc(HttpServletRequest request,Model model ) {
        int accNo = Integer.parseInt(request.getParameter("accNo"));
        Customer customer = customerDao.getCustomer(accNo);
        if(customer!=null) {
        float bal = customer.getAccbal();
        float amount =Float.parseFloat( request.getParameter("amount"));
        bal+=amount;
        customer.setAccbal(bal);
        customerDao.updateCustomer(customer);
        System.out.println("Balance deposited successfuly");
        }
        else {
        	System.out.print("Account not found");
        }
        return "redirect:/viewAllAccount";
        
    }

    @RequestMapping("/withdraw")
    public String withdrawAmount() {
        System.out.println("Opening WithdrawAmount page..");
        return "WithdrawAmount";
    }
    
    @Transactional
    @RequestMapping(path = "/WithdrawAmount", method = RequestMethod.POST)
    public String withdrawAmountinacc(HttpServletRequest request,Model model ) {
        int accNo = Integer.parseInt(request.getParameter("accNo"));
        Customer customer = customerDao.getCustomer(accNo);
        if(customer!=null) {
        float bal = customer.getAccbal();
        float amount =Float.parseFloat( request.getParameter("amount"));
        bal-=amount;
        customer.setAccbal(bal);
        customerDao.updateCustomer(customer);
        System.out.println("Balance deposited successfuly");
        }
        else {
        	System.out.print("Account not found");
        }
        return "redirect:/viewAllAccount";
        
    }
    
}
