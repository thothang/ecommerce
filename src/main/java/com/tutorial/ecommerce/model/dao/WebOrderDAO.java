package com.tutorial.ecommerce.model.dao;


import com.tutorial.ecommerce.model.LocalUser;
import com.tutorial.ecommerce.model.WebOrder;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;


public interface WebOrderDAO extends ListCrudRepository<WebOrder, Long> {

    List<WebOrder> findByUser(LocalUser user);

}
