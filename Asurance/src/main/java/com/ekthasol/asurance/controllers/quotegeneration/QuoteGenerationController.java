package com.ekthasol.asurance.controllers.quotegeneration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ekthasol.asurance.models.Customer;
import com.ekthasol.asurance.models.Vehicle;
import com.ekthasol.asurance.service.quotegeneration.QuoteGenerationService;

@Controller
public class QuoteGenerationController {
	
	@Autowired
	QuoteGenerationService quoteGenerationService;
	
	@RequestMapping(value = "/getVehicles", method = RequestMethod.POST)
	public ModelAndView getVehicles(@ModelAttribute("customer") Customer customer) {
		
		List<Vehicle> vehicleList = quoteGenerationService.getVehcicles(customer);
		
		if(vehicleList != null)
			return new ModelAndView("vehicleList","vehicleList",vehicleList);
		else
			return new ModelAndView("failure");
	}

}
