package com.example.smartphone.controller.client;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.smartphone.domain.Cart;
import com.example.smartphone.domain.CartDetail;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.Product_;
import com.example.smartphone.domain.User;
import com.example.smartphone.domain.DTO.ProductCriterialDTO;
import com.example.smartphone.repository.CartDetailRepository;
import com.example.smartphone.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemController {
    private final ProductService productService;
    private final CartDetailRepository cartDetailRepository;

    public ItemController(ProductService productService, CartDetailRepository cartDetailRepository) {
        this.productService = productService;
        this.cartDetailRepository = cartDetailRepository;
    }

    @GetMapping("/product/{id}")
    public String getMethodName(@PathVariable Long id, Model model) {
        Product product = this.productService.handleProductById(id);
        model.addAttribute("product", product);
        Pageable page = PageRequest.of(0, 4);
        Page<Product> pg = this.productService.handleAllProduct(page);
        List<Product> products = pg.getContent();
        model.addAttribute("products", products);
        return "client/product-detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        this.productService.handleAddProductToCart(email, id, session);
        return "redirect:/";
    }

    @GetMapping("/cart")
    public String getCart(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        Cart cart = this.productService.fetchByUser(currentUser);
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        double totalPrice = 0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += cartDetail.getProduct().getPrice() * cartDetail.getQuantity();
        }
        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cart", cart);
        return "client/cart/show";
    }

    @PostMapping("/delete-cart-product/{id}")
    public String postMethodName(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long cartDetailId = id;
        // Lấy user từ session
        long userId = (long) session.getAttribute("id");
        User user = new User();
        user.setId(userId);
        // Truyền user vào service
        this.productService.handleRemoveCartDetail(cartDetailId, session, user);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String postCheckOut(Model model,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        List<CartDetail> cartDetails = this.cartDetailRepository.findAll();
        model.addAttribute("cartDetails", cartDetails);
        // totalPrice
        double totalPrice = 0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += cartDetail.getProduct().getPrice() * cartDetail.getQuantity();
        }
        model.addAttribute("totalPrice", totalPrice);
        return "client/cart/checkout";
    }

    @GetMapping("/products")
    public String getProducts(
            Model model,
            @RequestParam(value = "page", required = false, defaultValue = "1") int page,
            @RequestParam(value = "size", required = false, defaultValue = "12") int size, // Thêm dòng này
            ProductCriterialDTO productCriterialDTO,
            HttpServletRequest request) {

        Pageable pageable = PageRequest.of(page - 1, size); // Sử dụng size

        if (productCriterialDTO.getSort() != null && !productCriterialDTO.getSort().isEmpty()) {
            String sort = productCriterialDTO.getSort();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, size, Sort.by(Product_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, size, Sort.by(Product_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, size);
            }
        }

        String qs = request.getQueryString();
        if (qs != null && !qs.isEmpty()) {
            qs = qs.replaceAll("(&|\\?)?page=\\d+", "");
            if (!qs.isEmpty() && !qs.startsWith("&")) {
                qs = "&" + qs;
            }
        } else {
            qs = "";
        }

        Page<Product> pg = this.productService.handleAllProductWithSpec(pageable, productCriterialDTO);
        List<Product> products = pg.getContent();

        model.addAttribute("qs", qs);
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", pg.getTotalPages() == 0 ? 1 : pg.getTotalPages());

        return "client/all-product";
    }

    @PostMapping("/place-order")
    public String postPlaceOrder(HttpServletRequest request, @RequestParam("receiverName") String receiverName,
            @RequestParam("receiverPhone") String receiverPhone,
            @RequestParam("receiverAddress") String receiverAddress) {
        HttpSession session = request.getSession(false);
        User currentUser = new User();
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        this.productService.handlePlaceOrder(currentUser, session, receiverName, receiverAddress, receiverPhone);
        return "redirect:/thanks";
    }

    @PostMapping("/confirm-checkout")
    public String postCheckOutPage(@ModelAttribute("cart") Cart cart) {
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.productService.handleUpdateCartBeforeCheckout(cartDetails);
        return "redirect:/checkout";
    }

    @GetMapping("/thanks")
    public String getThanksPage() {
        return "client/cart/thanks";
    }

}
