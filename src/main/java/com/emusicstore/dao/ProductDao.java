package com.emusicstore.dao;
import com.emusicstore.model.Product;
import java.util.List;

/**
 * @author George Obiero
 */
public interface ProductDao {
    void addProduct(Product product);
    Product getProductById(int id);
    List<Product> getAllProducts();
    void deleteProduct(int id);
}
