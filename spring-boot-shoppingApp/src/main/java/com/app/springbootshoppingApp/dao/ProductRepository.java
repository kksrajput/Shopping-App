package com.app.springbootshoppingApp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.springbootshoppingApp.entity.Product;

public interface ProductRepository extends JpaRepository<Product,Long>{

}
