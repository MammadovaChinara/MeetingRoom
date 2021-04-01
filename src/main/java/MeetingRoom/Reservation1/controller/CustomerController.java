package MeetingRoom.Reservation1.controller;

import MeetingRoom.Reservation1.domain.Customer;
import MeetingRoom.Reservation1.repository.CustomerRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CustomerController {
    private CustomerRepository customerRepository;

    public CustomerController(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @GetMapping("/")
    public ModelAndView registerIndex(){
        ModelAndView modelAndView = new ModelAndView("web/register");
        modelAndView.addObject("customerRegister", new Customer());
        return modelAndView;
    }

    @PostMapping("/")
    public ModelAndView register(@ModelAttribute Customer customer){
        ModelAndView modelAndView = new ModelAndView();
        customerRepository.add(customer);
        modelAndView.setViewName("index");
        return modelAndView;
    }






}
