package com.example.smartphone.service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.aspectj.weaver.ast.Or;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Cart;
import com.example.smartphone.domain.CartDetail;
import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.OrderDetail;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.Product_;
import com.example.smartphone.domain.User;
import com.example.smartphone.domain.DTO.ProductCriterialDTO;
import com.example.smartphone.repository.CartDetailRepository;
import com.example.smartphone.repository.CartRepository;
import com.example.smartphone.repository.OrderDetailRepository;
import com.example.smartphone.repository.OrderRepository;
import com.example.smartphone.repository.ProductRepository;
import com.example.smartphone.service.specification.ProductSpecs;

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
                    cart.setSum(cart.getSum() + 1);
                    this.cartRepository.save(cart);
                } else {
                    old.setQuantity(old.getQuantity() + 1);
                    this.cartDetailRepository.save(old);
                }
            }
            // Cập nhật lại session từ DB
            updateCartSumInSession(user, session);
        }
    }

    public Page<Product> handleAllProductWithSpec(Pageable pageable, ProductCriterialDTO dto) {
        Specification<Product> combinedSpec = Specification.where(null);

        // Filter theo hãng sản xuất (nhiều hãng)
        if (dto.getFactory() != null && !dto.getFactory().isEmpty()) {
            List<String> factories = Arrays.asList(dto.getFactory().split(","));
            combinedSpec = combinedSpec.and(ProductSpecs.factoryNameIn(factories));
        }

        // Filter theo mục đích sử dụng (target) - nhiều giá trị
        if (dto.getTarget() != null && !dto.getTarget().isEmpty()) {
            String[] targets = dto.getTarget().split(",");
            combinedSpec = combinedSpec.and(ProductSpecs.targetIn(Arrays.asList(targets)));
        }

        // Filter theo mức giá (price) - nhiều giá trị
        if (dto.getPrice() != null && !dto.getPrice().isEmpty()) {
            String[] prices = dto.getPrice().split(",");
            Specification<Product> priceSpec = null;
            for (String p : prices) {
                double min = 0, max = 0;
                switch (p) {
                    case "duoi-10-trieu":
                        min = 0;
                        max = 10000000;
                        break;
                    case "10-15-trieu":
                        min = 10000000;
                        max = 15000000;
                        break;
                    case "15-20-trieu":
                        min = 15000000;
                        max = 20000000;
                        break;
                    case "tren-20-trieu":
                        min = 20000000;
                        max = 200000000;
                        break;
                }
                if (min < max) {
                    Specification<Product> rangeSpec = ProductSpecs.matchPrice(min, max);
                    priceSpec = (priceSpec == null) ? rangeSpec : priceSpec.or(rangeSpec);
                }
            }
            if (priceSpec != null) {
                combinedSpec = combinedSpec.and(priceSpec);
            }
        }

        // Filter theo tên sản phẩm
        if (dto.getName() != null && !dto.getName().isEmpty()) {
            combinedSpec = combinedSpec.and(ProductSpecs.nameLike(dto.getName()));
        }

        return this.productRepository.findAll(combinedSpec, pageable);
    }

    public void handleRemoveCartDetail(long id, HttpSession session, User user) {
        Optional<CartDetail> cartDetailOptional = this.cartDetailRepository.findById(id);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();
            Cart currentCart = cartDetail.getCart();

            // Xóa CartDetail
            this.cartDetailRepository.deleteById(id);

            // Kiểm tra còn CartDetail nào trong Cart không
            long s = currentCart.getSum() - 1;
            if (s > 0) {
                currentCart.setSum(s);
                this.cartRepository.save(currentCart);
            } else {
                // Nếu không còn sản phẩm nào thì xóa luôn Cart
                this.cartRepository.deleteById(currentCart.getId());
            }
            // Luôn cập nhật lại session từ DB
            updateCartSumInSession(user, session);
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

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone) {
        Order order = new Order();

        order.setUser(user);
        order.setRecriverName(receiverName);
        order.setReceiverAddress(receiverAddress);
        order.setReceiverPhone(receiverPhone);
        order.setStatus("PENDING");
        order = this.orderRepository.save(order);

        System.out.println("====================================================");
        System.out.println("Order ID: " + order.getId());
        System.out.println("Order Receiver Name: " + order.getRecriverName());
        System.out.println("Order Receiver Address: " + order.getReceiverAddress());
        System.out.println("Order Receiver Phone: " + order.getReceiverPhone());
        System.out.println("Order Status: " + order.getStatus());
        System.out.println("====================================================");
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


                System.out.println("====================================================");
                System.out.println("OrderDetail ID: " + orderDetail.getId());
                System.out.println("OrderDetail Product ID: " + orderDetail.getProduct().getId());
                System.out.println("OrderDetail Product Name: " + orderDetail.getProduct().getName());
                System.out.println("OrderDetail Product Price: " + orderDetail.getPrice());
                System.out.println("OrderDetail Product Quantity: " + orderDetail.getQuantity());
                System.out.println("OrderDetail Product Total Price: "
                        + (orderDetail.getPrice() * orderDetail.getQuantity()));
                System.out.println("====================================================");
            }
            order.setTotalPrice(sum);
            this.orderRepository.save(order);

            for (CartDetail cartDetail : cartDetails) {
                this.cartDetailRepository.deleteById(cartDetail.getId());
            }
            this.cartRepository.deleteById(cart.getId());
            // Cập nhật lại session từ DB
            updateCartSumInSession(user, session);
        }
    }

    private void updateCartSumInSession(User user, HttpSession session) {
        Cart cart = this.cartRepository.findByUser(user);
        long sum = 0;
        if (cart != null && cart.getCartDetails() != null) {
            sum = cart.getCartDetails().size();
        }
        session.setAttribute("sum", sum);
    }
}
