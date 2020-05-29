package ndk.banee.spring_estore.service;

import ndk.banee.spring_estore.domain.customer;
import ndk.banee.spring_estore.mapper.customerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private customerMapper customerMapper;

    public customer findByUsername(String username) {

        return customerMapper.selectByPrimaryKey(username);
    }

    public void addCustomer(customer customer) {

        System.out.println(customerMapper.insert(customer));
    }
}
