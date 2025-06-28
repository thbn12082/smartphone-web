package com.example.smartphone.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.smartphone.domain.Order;
import com.example.smartphone.service.OrderService;

@Controller
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/admin/order")
    public String getDashboard(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        if (pageOptional.isPresent()) {
            try {
                page = Integer.parseInt(pageOptional.get());
            } catch (Exception e) {
                // nếu parse thất bại, giữ mặc định page = 1
            }
        }
        Pageable pageable = PageRequest.of(page - 1, 10);
        Page<Order> ordersPage = this.orderService.fetchAllOrders(pageable);
        List<Order> orders = ordersPage.getContent();
        model.addAttribute("orders", orders);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", ordersPage.getTotalPages());
        System.out.println("---------------------------------------------------------");
        System.out.println("Total Pages: " + ordersPage.getTotalPages());
        System.out.println("Total Elements: " + ordersPage.getTotalElements());
        System.out.println("Page Size: " + ordersPage.getSize());
        System.out.println("Page Number: " + ordersPage.getNumber());
        for (Order o : orders) {
            System.out.println("Order ID: " + o.getId());
            System.out.println("Total Price: " + o.getTotalPrice());
            System.out.println("Receiver Name: " + o.getRecriverName());
            System.out.println("Receiver Address: " + o.getReceiverAddress());
            System.out.println("Receiver Phone: " + o.getReceiverPhone());
            System.out.println("Status: " + o.getStatus());
        }
        System.out.println("---------------------------------------------------------");
        return "admin/order/show-order";
    }

    @GetMapping("/admin/order/{id}")
    public String getOrderDetailPage(Model model, @PathVariable long id) {
        Optional<Order> optOrder = this.orderService.fetchOrderById(id);
        if (optOrder.isEmpty()) {
            return "redirect:/admin/order";
        }
        Order order = optOrder.get();
        model.addAttribute("orderDetails", order.getOrderDetails());
        // model.addAttribute("order", order);
        model.addAttribute("id", id);
        
        System.out.println("---------------------------------------------------------");
        System.out.println("Order ID: " + order.getId());
        System.out.println("Total Price: " + order.getTotalPrice());
        System.out.println("Receiver Name: " + order.getRecriverName());
        System.out.println("Receiver Address: " + order.getReceiverAddress());
        System.out.println("Receiver Phone: " + order.getReceiverPhone());
        System.out.println("Status: " + order.getStatus());
      
        System.out.println(
                "Order Details Count: " + (order.getOrderDetails() != null ? order.getOrderDetails().size() : 0));
        System.out.println("---------------------------------------------------------");
        return "admin/order/view-order";
    }

    @GetMapping("/admin/order/delete/{id}")
    public String getDeleteOrderPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("newOrder", new Order());
        return "admin/order/delete-order";
    }

    @PostMapping("/admin/order/delete")
    public String postDeleteOrder(@ModelAttribute("newOrder") Order order) {
        this.orderService.deleteOrderById(order.getId());
        return "redirect:/admin/order";
    }

    @GetMapping("/admin/order/update/{id}")
    public String getUpdateOrderPage(Model model, @PathVariable long id) {
        Optional<Order> currentOrder = this.orderService.fetchOrderById(id);
        if (currentOrder.isEmpty()) {
            return "redirect:/admin/order";
        }
        model.addAttribute("newOrder", currentOrder.get());
        System.out.println("---------------------------------------------------------");
        System.out.println("Current Order TotalPrice: " + currentOrder.get().getTotalPrice());
        System.out.println("Current Order ReceiverName: " + currentOrder.get().getRecriverName());
        System.out.println("Current Order ReceiverAddress: " + currentOrder.get().getReceiverAddress());
        System.out.println("Current Order ReceiverPhone: " + currentOrder.get().getReceiverPhone());
        System.out.println("Current Order Status: " + currentOrder.get().getStatus());
        System.out.println("Current Order ID: " + currentOrder.get().getId());
        System.out.println("---------------------------------------------------------");
        return "admin/order/update-order";
    }

    @PostMapping("/admin/order/update")
    public String handleUpdateOrder(@ModelAttribute("newOrder") Order order) {
        this.orderService.updateOrder(order);
        System.out.println("---------------------------------------------------------");
        System.out.println("Updated Order ID: " + order.getId());
        System.out.println("Updated Order TotalPrice: " + order.getTotalPrice());
        System.out.println("Updated Order ReceiverName: " + order.getRecriverName());
        System.out.println("Updated Order ReceiverAddress: " + order.getReceiverAddress());
        System.out.println("Updated Order ReceiverPhone: " + order.getReceiverPhone());
        System.out.println("Updated Order Status: " + order.getStatus());
        System.out.println("---------------------------------------------------------");
        return "redirect:/admin/order";
    }
}
