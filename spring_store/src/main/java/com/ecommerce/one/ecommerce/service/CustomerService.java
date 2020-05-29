package com.ecommerce.one.ecommerce.service;

import com.ecommerce.one.ecommerce.domain.customer;
import com.ecommerce.one.ecommerce.domain.customerExample;
import com.ecommerce.one.ecommerce.mapper.customerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private customerMapper customermapper;

    public List<customer> findAllCustomers() {
        return customermapper.selectByExample(new customerExample());
    }

    public customer getById(Integer id) {
        return customermapper.selectByPrimaryKey(id);
    }

    public void deleteCustomer(Integer id) {
        customermapper.deleteByPrimaryKey(id);
    }

    public void saveOrUpdate(customer Customer) {
        if (Customer.getCustomeriid() != null) {
            customermapper.updateByPrimaryKey(Customer);
        } else {
            customermapper.insert(Customer);
        }
    }

}
