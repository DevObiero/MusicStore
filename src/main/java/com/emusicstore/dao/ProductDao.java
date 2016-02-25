package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();
        product1.setProductId("P123");
        product1.setProductName("Guitar one");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a fender strait guitar");
        product1.setProductPrice(1200);
        product1.setProductCondition("New");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fender");

        Product product2 = new Product();
        product2.setProductId("P1234");
        product2.setProductName("Record1");
        product2.setProductCategory("Record");
        product2.setProductDescription("Awesome mix of 21st century");
        product2.setProductPrice(25);
        product2.setProductCondition("New");
        product2.setProductStatus("Active");
        product2.setUnitInStock(56);
        product2.setProductManufacturer("EMI");
        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        return productList;
    }

    public Product getProductById(String productId) throws IOException {
        for (Product product: getProductList()) {
            if(product.getProductId().equals(productId)){
                return product;
            }
        }

        throw new IOException("No product found");
    }
}
