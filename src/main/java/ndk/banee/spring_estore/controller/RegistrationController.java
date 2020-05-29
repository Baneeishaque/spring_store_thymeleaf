package ndk.banee.spring_estore.controller;

import ndk.banee.spring_estore.domain.customer;
import ndk.banee.spring_estore.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegistrationController {

    @GetMapping("/register")
    public String navigate(Model model) {

        customer customer = new customer();
        model.addAttribute("customer", customer);
        model.addAttribute("usernameExists", false);
        return "register";
    }

    @PostMapping("/register")
    public String submitCustomerRegistrationForm(@ModelAttribute("customer") customer customer, Model model, BindingResult bindingResult) {

//        if (!customerRegistrationModal.password.equals(customerRegistrationModal.confirmPassword)) {
//
////            FormFieldValidationErrorModal formFieldValidationErrorModal = new FormFieldValidationErrorModal();
////            formFieldValidationErrorModal.setMessage("Unmatched passwords");
////            model.addAttribute("validation-error", formFieldValidationErrorModal);
//            bindingResult.addError(new ObjectError("unmatchedPasswords", "Unmatched passwords"));
//            return "register";
//        }

//        CustomerRepository customerRepository=
        CustomerService customerService = new CustomerService();
        try {

            customerService.findByUsername(customer.getUsername());
            model.addAttribute("usernameExists", "true");
            return "register";

        } catch (NullPointerException exception) {

            customerService.addCustomer(customer);
            return "/";
        }
    }
}
