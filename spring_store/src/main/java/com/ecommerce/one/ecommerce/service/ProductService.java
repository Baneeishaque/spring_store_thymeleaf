package com.ecommerce.one.ecommerce.service;

import com.ecommerce.one.ecommerce.domain.product;
import com.ecommerce.one.ecommerce.domain.productExample;
import com.ecommerce.one.ecommerce.mapper.productMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private productMapper productmapper;

    public List<product> findAllProducts() {
        return productmapper.selectByExample(new productExample());
    }

    public product getById(Integer id) {
        return productmapper.selectByPrimaryKey(id);
    }

    public void deleteProduct(Integer id) {
        productmapper.deleteByPrimaryKey(id);
    }

    public void saveOrUpdate(product prod) {
        if (prod.getProductid() != null) {
            productmapper.updateByPrimaryKey(prod);
        } else {
            productmapper.insert(prod);
        }
    }

}
