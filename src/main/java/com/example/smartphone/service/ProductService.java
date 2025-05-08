package com.example.smartphone.service;

import java.util.List;
import java.util.Optional;

import org.aspectj.weaver.ast.Or;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Cart;
import com.example.smartphone.domain.CartDetail;
import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.OrderDetail;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.User;
import com.example.smartphone.repository.CartDetailRepository;
import com.example.smartphone.repository.CartRepository;
import com.example.smartphone.repository.OrderDetailRepository;
import com.example.smartphone.repository.OrderRepository;
import com.example.smartphone.repository.ProductRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService, OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public Page<Product> handleAllProduct(Pageable pageable) {
        return this.productRepository.findAll(pageable);
    }

    public Product handleProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void handleDelProduct(long id) {
        this.productRepository.delete(this.productRepository.findById(id));
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session) {
        User user = this.userService.handleUserByEmail(email);
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);
            if (cart == null) {
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(0);
                cart = this.cartRepository.save(otherCart);
                session.setAttribute("sum", 0);
            }
            Product product = this.productRepository.findById(productId);
            if (product != null) {
                CartDetail old = this.cartDetailRepository.findByCartAndProduct(cart, product);
                if (old == null) {
                    CartDetail cartDetail = new CartDetail();
                    cartDetail.setCart(cart);
                    cartDetail.setProduct(product);
                    cartDetail.setPrice(product.getPrice());
                    cartDetail.setQuantity(1);
                    this.cartDetailRepository.save(cartDetail);
                    long s = cart.getSum() + 1;
                    cart.setSum(s);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", s);
                } else {
                    old.setQuantity(old.getQuantity() + 1);
                    this.cartDetailRepository.save(old);
                }
            }

        }
    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleRemoveCartDetail(long id, HttpSession session) {
        Optional<CartDetail> cartDetailOptional = this.cartDetailRepository.findById(id);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();
            Cart currentCart = cartDetail.getCart();
            this.cartRepository.deleteById(id);
            if (currentCart.getSum() > 1) {
                long s = currentCart.getSum() - 1;
                currentCart.setSum(s);
                this.cartRepository.save(currentCart);
                session.setAttribute("sum", s);
            } else {
                this.cartRepository.deleteById(currentCart.getId());
                session.setAttribute("sum", 0);
            }
        }

    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            Optional<CartDetail> cdOptional = this.cartDetailRepository.findById(cartDetail.getId());
            if (cdOptional.isPresent()) {
                CartDetail currentCartDetail = cdOptional.get();
                currentCartDetail.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(currentCartDetail);
            }
        }
    }

    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone) {
        Order order = new Order();
        order.setUser(user);
        order.setRecriverName(receiverName);
        order.setReceiverAddress(receiverAddress);
        order.setReceiverPhone(receiverPhone);
        order.setStatus("PENDING");

        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();
            double sum = 0;
            for (CartDetail cartDetail : cartDetails) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrder(order);
                orderDetail.setProduct(cartDetail.getProduct());
                orderDetail.setPrice(cartDetail.getPrice());
                orderDetail.setQuantity(cartDetail.getQuantity());
                sum += cartDetail.getPrice() * cartDetail.getQuantity();
                this.orderDetailRepository.save(orderDetail);
            }
            order.setTotalPrice(sum);
            order = this.orderRepository.save(order);

            for (CartDetail cartDetail : cartDetails) {
                this.cartDetailRepository.deleteById(cartDetail.getId());
            }
            this.cartDetailRepository.deleteById(cart.getId());
            session.setAttribute("sum", 0);
        }

    }
}
