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
import com.ekthasol.asurance.models.Customer;
import com.ekthasol.asurance.models.CustomerInfo;
import com.ekthasol.asurance.models.Vehicle;
import com.ekthasol.asurance.service.quotegeneration.QuoteGenerationService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;

@Controller
public class QuoteGenerationController {

	@Autowired
	QuoteGenerationService quoteGenerationService;

	@RequestMapping(value = "/getVehicles", method = RequestMethod.POST)
	public String getVehicles(@ModelAttribute Customer customer, @ModelAttribute Address address, HttpSession session) {
		String output = quoteGenerationService.getListtoUI(address);
		session.setAttribute("customer", customer);
		session.setAttribute("address", address);
		if (output != null) {
			List<Vehicle> vehicleList = null;
			ObjectMapper mapper = new ObjectMapper();
			try {
				vehicleList = mapper.readValue(output,
						TypeFactory.defaultInstance().constructCollectionType(List.class, Vehicle.class));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if (vehicleList != null && !vehicleList.isEmpty()){
				session.setAttribute("vehicleList", vehicleList);
				return "vehicleList";
			}else{
				session.setAttribute("message", "No Vehicles found");
				return "redirect:/#/quote";
			}
		}
		else{
			
			session.setAttribute("message", "Address did not match");
			return "redirect:/#/quote";
		}
	}
	
	@RequestMapping(value = "/questionnaire", method = RequestMethod.POST)
	public ModelAndView getQuestions(@ModelAttribute("vehicles") Vehicle selectedVehicle,HttpSession session){
		
		/*Vehicle vehicle = new Vehicle();
		if(selectedVehicle.getIsSelected()){
			
			vehicle.setIsSelected(selectedVehicle.getIsSelected());
			vehicle.setVin(selectedVehicle.getVin());
			vehicle.setYear(selectedVehicle.getYear());
			vehicle.setMake(selectedVehicle.getMake());
			vehicle.setModel(selectedVehicle.getModel());
			session.setAttribute("selectedVehicle", vehicle);
		}*/
		session.setAttribute("selectedVehicle", selectedVehicle);
		System.out.println(selectedVehicle.toString());
		return new ModelAndView("questionaire","selectedVehicle", selectedVehicle);
	}
	
	@RequestMapping(value = "/addDriver", method = RequestMethod.POST)
	public ModelAndView addDriver(@ModelAttribute("questions") CustomerInfo customerInfo,HttpSession session){
		
		/*Vehicle vehicle = new Vehicle();
		if(selectedVehicle.getIsSelected()){
			
			vehicle.setIsSelected(selectedVehicle.getIsSelected());
			vehicle.setVin(selectedVehicle.getVin());
			vehicle.setYear(selectedVehicle.getYear());
			vehicle.setMake(selectedVehicle.getMake());
			vehicle.setModel(selectedVehicle.getModel());
			session.setAttribute("selectedVehicle", vehicle);
		}*/
		session.setAttribute("customerInfo", customerInfo);
		System.out.println(customerInfo.toString());
		return new ModelAndView("driverInfo");
	}
	@RequestMapping(value = "/premium", method = RequestMethod.GET)
	   public String goToPremium() {
			
	      return ("premium");
	   }
}
