package com.ekthasol.asurance.controllers.quotegeneration;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	public ModelAndView getVehicles(@ModelAttribute("address") Address address, HttpSession session) {
		ModelAndView model = new ModelAndView();
		String output = quoteGenerationService.getListtoUI(address);
		if (output != null) {
			List<Vehicle> vehicleList = null;
			ObjectMapper mapper = new ObjectMapper();
			try {
				vehicleList = mapper.readValue(output,
						TypeFactory.defaultInstance().constructCollectionType(List.class, Vehicle.class));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if (vehicleList != null){
				session.setAttribute("vehicleList", vehicleList);
				model.setViewName("vehicleList");
			}else
				model.setViewName("failure");
		}
		else
			model.setViewName("failure");
		return model;
	}
	
	@RequestMapping(value = "/questionnaire", method = RequestMethod.POST)
	public ModelAndView getQuestions(@ModelAttribute("vehicles") Vehicle selectedVehicle){
		
		Vehicle vehicle = new Vehicle();
		if(selectedVehicle.getIsSelected()){
			
			vehicle.setIsSelected(selectedVehicle.getIsSelected());
			vehicle.setVin(selectedVehicle.getVin());
			vehicle.setYear(selectedVehicle.getYear());
			vehicle.setMake(selectedVehicle.getMake());
			vehicle.setModel(selectedVehicle.getModel());
		}
		
		System.out.println(vehicle.toString());
		return new ModelAndView("questionaire");
	}
}
