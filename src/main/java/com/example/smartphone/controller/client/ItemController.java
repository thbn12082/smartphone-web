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
        this.productService.handleRemoveCartDetail(cartDetailId, session);
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
    public String getProducts(Model model, ProductCriterialDTO productCriterialDTO, HttpServletRequest request) {
        //handle pagination
        int page = 1;
        try{
            if( productCriterialDTO.getPageOptional().isPresent()){
                page = Integer.parseInt(productCriterialDTO.getPageOptional().get());
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        Pageable pageable = PageRequest.of(page - 1, 12);
        if(productCriterialDTO.getSort() != null && productCriterialDTO.getSort().isPresent()){
            String sort = productCriterialDTO.getSort().get();
            if(sort.equals("gia-tang-dan")){
                 pageable = PageRequest.of(page - 1, 12, Sort.by(Product_.PRICE).ascending());
            }
            else if(sort.equals("gia-giam-dan")){
                 pageable = PageRequest.of(page - 1, 12, Sort.by(Product_.PRICE).descending());
            }else{
                 pageable = PageRequest.of(page - 1, 12);
            }
        }
        String qs = request.getQueryString();
        if(qs != null && !qs.isEmpty()){
            qs = qs.replace("page" + page, "");
        }
        Page<Product> pg = this.productService.handleAllProductWithSpec(pageable, productCriterialDTO);
        List<Product> products = pg.getContent().size() == 0 ? new ArrayList<Product>() : pg.getContent();

        model.addAttribute("qs", qs);
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        int totalPages;
        if(pg.getTotalPages() == 0){
            totalPages = 1;
        }
        else{
            totalPages = pg.getTotalPages();
        }
        model.addAttribute("totalPages", totalPages);

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
