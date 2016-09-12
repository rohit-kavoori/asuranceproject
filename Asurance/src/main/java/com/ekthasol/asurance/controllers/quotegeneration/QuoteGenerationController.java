package com.ekthasol.asurance.controllers.quotegeneration;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ekthasol.asurance.models.Address;
import com.ekthasol.asurance.models.Vehicle;
import com.ekthasol.asurance.service.quotegeneration.QuoteGenerationService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;

@Controller
public class QuoteGenerationController {
	
	@Autowired
	QuoteGenerationService quoteGenerationService;
	
	@RequestMapping(value = "/getVehicles", method = RequestMethod.POST)
	public ModelAndView getVehicles(@ModelAttribute("address") Address address) {
		
		
		String output = quoteGenerationService.getListtoUI(address);
		List<Vehicle> vehicleList=null;
		ObjectMapper mapper = new ObjectMapper();
		//Vehicle vehicle = new Vehicle();
		try {
			vehicleList = mapper.readValue(output, TypeFactory.defaultInstance().constructCollectionType(List.class, Vehicle.class));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		
		if(vehicleList != null)
			return new ModelAndView("vehicleList","vehicleList",vehicleList);
		else
			return new ModelAndView("failure");
	}

}
