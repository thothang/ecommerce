package com.tutorial.ecommerce.service;

import com.tutorial.ecommerce.model.LocalUser;
import com.tutorial.ecommerce.model.WebOrder;
import com.tutorial.ecommerce.model.dao.WebOrderDAO;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class OrderService {

    private WebOrderDAO webOrderDAO;


    public OrderService(WebOrderDAO webOrderDAO) {
        this.webOrderDAO = webOrderDAO;
    }

    public List<WebOrder> getOrders(LocalUser user) {
        return webOrderDAO.findByUser(user);
    }

}