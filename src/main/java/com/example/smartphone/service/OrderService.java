package com.example.smartphone.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.OrderDetail;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.User;
import com.example.smartphone.repository.OrderDetailRepository;
import com.example.smartphone.repository.OrderRepository;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public OrderService(
            OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository) {
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

    public Optional<Order> fetchOrderById(long id) {
        return this.orderRepository.findById(id);
    }

    public void deleteOrderById(long id) {
        // delete order detail
        Optional<Order> orderOptional = this.fetchOrderById(id);
        if (orderOptional.isPresent()) {
            Order order = orderOptional.get();
            List<OrderDetail> orderDetails = order.getOrderDetails();
            for (OrderDetail orderDetail : orderDetails) {
                this.orderDetailRepository.deleteById(orderDetail.getId());
            }
            // System.out.println("====================================================");
            // System.out.println("Order ID: " + order.getId());
            // System.out.println("Order Status: " + order.getStatus());
            // System.out.println("Order Total Price: " + order.getTotalPrice());
            // System.out.println("======================================================");
        }

        this.orderRepository.deleteById(id);
    }

    public Page<Order> fetchAllOrders(org.springframework.data.domain.Pageable pageable) {
        return this.orderRepository.findAll(pageable);
    }

    public void updateOrder(Order order) {
        Optional<Order> orderOptional = this.fetchOrderById(order.getId());
        if (orderOptional.isPresent()) {
            Order currentOrder = orderOptional.get();
            currentOrder.setStatus(order.getStatus());
            this.orderRepository.save(currentOrder);

            // System.out.println("====================================================");
            // System.out.println("Order ID: " + currentOrder.getId());
            // System.out.println("Order Status: " + currentOrder.getStatus());
            // System.out.println("Order Total Price: " + currentOrder.getTotalPrice());
            // System.out.println("=====================================================");
        }
    }

    public List<Order> fetchOrderByUser(User user) {
        return this.orderRepository.findByUser(user);
    }

//     public List<Product> getTopSellingProducts(int limit) {
//     return orderRepository.findTopSellingProducts(limit);
// }
}
