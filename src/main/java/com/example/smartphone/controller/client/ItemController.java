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
        System.out.println("===================================================");
        System.out.println("productId: " + product.getId());
        System.out.println("Product Name: " + product.getName());
        System.out.println("Product Price: " + product.getPrice());
        System.out.println("Product Image: " + product.getImage());
        System.out.println("Product DetailDesc: " + product.getDetailDesc());
        System.out.println("Product ShortDesc: " + product.getShortDesc());
        System.out.println("Product Quantity: " + product.getQuantity());
        System.out.println("Product Sold: " + product.getSold());
        System.out.println("===================================================");
        System.out.println(
                "===================================================More Products===================================================");
        System.out.println("Page Number: " + pg.getNumber());
        System.out.println("Page Size: " + pg.getSize());
        System.out.println("Total Pages: " + pg.getTotalPages());
        System.out.println("Total Elements: " + pg.getTotalElements());
        System.out.println("Current Page: " + pg.getNumber());
        for (Product p : products) {
            System.out.println("Product ID: " + p.getId());
            System.out.println("Product Name: " + p.getName());
            System.out.println("Product Price: " + p.getPrice());
            System.out.println("Product Image: " + p.getImage());
            System.out.println("Product DetailDesc: " + p.getDetailDesc());
            System.out.println("Product ShortDesc: " + p.getShortDesc());
            System.out.println("Product Quantity: " + p.getQuantity());
            System.out.println("Product Sold: " + p.getSold());

            System.out.println("===================================================");
        }

        return "client/product-detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(
            @PathVariable long id,
            @RequestParam(value = "fromPage", required = false, defaultValue = "/") String fromPage,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        System.out.println("email: " + email);
        this.productService.handleAddProductToCart(email, id, session);
        // Redirect về đúng trang nguồn
        return "redirect:" + fromPage;
    }

    @GetMapping("/cart")
    public String getCart(Model model, HttpServletRequest request) {
        System.out.println("====================getCart====================");
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        System.out.println("currentUserId: " + currentUser.getId());
        Cart cart = this.productService.fetchByUser(currentUser);
        System.out.println("cartId: " + cart.getId());

        System.out.println("cartSum" + cart.getSum());

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

        double totalPrice = 0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += cartDetail.getProduct().getPrice() * cartDetail.getQuantity();
            System.out.println("cartDetailId: " + cartDetail.getId());
            System.out.println("cartQuantity: " + cartDetail.getQuantity());
            System.out.println("cartDetailPrice: " + cartDetail.getProduct().getPrice());
            System.out.println("=====================");
        }
        System.out.println("=====================");
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
        // Xóa sản phẩm khỏi cart
        this.productService.handleRemoveCartDetail(cartDetailId, session, user);

        // Kiểm tra lại cart của user
        Cart cart = this.productService.fetchByUser(user);
        if (cart == null || cart.getCartDetails() == null || cart.getCartDetails().isEmpty()) {
            // Nếu không còn sản phẩm nào thì chuyển về /products
            return "redirect:/products";
        }
        // Nếu vẫn còn sản phẩm thì quay lại /cart
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
        System.out.println("======================");
        System.out.println("totalPrice: " + totalPrice);
        System.out.println("======================");
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
        System.out.println("===================================================");
        System.out.println("page: " + page);
        System.out.println("size: " + size);

        if (productCriterialDTO.getSort() != null && !productCriterialDTO.getSort().isEmpty()) {
            String sort = productCriterialDTO.getSort();
            System.out.println("sort: " + sort);
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, size, Sort.by(Product_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, size, Sort.by(Product_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, size);
            }
        }

        String qs = request.getQueryString();
        System.out.println("qs: " + qs);
        if (qs != null) {
            List<String> x = Arrays.asList(qs.split("&"));
            for (String s : x) {
                System.out.println(s);
            }
        }

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
        for (Product p : products) {
            System.out.println("Product ID: " + p.getId());
            System.out.println("Product Name: " + p.getName());
            System.out.println("Product Price: " + p.getPrice());
            System.out.println("Product Image: " + p.getImage());
            System.out.println("Product DetailDesc: " + p.getDetailDesc());
            System.out.println("Product ShortDesc: " + p.getShortDesc());
            System.out.println("Product Quantity: " + p.getQuantity());
            System.out.println("Product Sold: " + p.getSold());
        }

        model.addAttribute("qs", qs);
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", pg.getTotalPages() == 0 ? 1 : pg.getTotalPages());
        System.out.println("===================================================");
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
