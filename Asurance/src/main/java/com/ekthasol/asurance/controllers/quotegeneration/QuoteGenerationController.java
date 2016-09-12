package com.ekthasol.asurance.controllers.quotegeneration;

import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ekthasol.asurance.models.Address;
import com.ekthasol.asurance.models.Vehicle;
import com.ekthasol.asurance.service.quotegeneration.QuoteGenerationService;

@Controller
public class QuoteGenerationController {
	
	@Autowired
	QuoteGenerationService quoteGenerationService;
	
	@RequestMapping(value = "/getVehicles", method = RequestMethod.POST)
	public ModelAndView getVehicles(@ModelAttribute("address") Address address) {
		
		
		String output = quoteGenerationService.getListtoUI(address);
		
		ObjectMapper mapper = new ObjectMapper();
		Vehicle vehicle = new Vehicle();
		//List<Vehicle> vehicleList = new ArrayList<Vehicle>();
		try {
			vehicle = mapper.readValue(output, Vehicle.class);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		
		if(vehicle != null)
			return new ModelAndView("vehicleList","vehicleList",vehicle);
		else
			return new ModelAndView("failure");
	}

}
