package com.kapil.customerDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.kapil.customer.Customer;

@Component
public class CustomerDao {

    private final HibernateTemplate hibernateTemplate;

    @Autowired
    public CustomerDao(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    
    @Transactional
    public int addCustomer(Customer customer) {
        return (int) hibernateTemplate.save(customer);
    }
    
    public Customer getCustomer(int accNo) {
        return this.hibernateTemplate.get(Customer.class, accNo);
    }
    
    public List<Customer> getAllCustomers() {
        return this.hibernateTemplate.loadAll(Customer.class);
    }
    
    public void deleteCustomer(int accNo) {
        Customer customer = this.hibernateTemplate.get(Customer.class, accNo);
        if (customer != null) {
            this.hibernateTemplate.delete(customer);
        }
    }
    
    public void updateCustomer(Customer customer) {
        this.hibernateTemplate.update(customer);
    }
}
