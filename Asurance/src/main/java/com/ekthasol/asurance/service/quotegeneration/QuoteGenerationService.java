package com.ekthasol.asurance.service.quotegeneration;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.web.client.RestTemplate;

import com.ekthasol.asurance.models.Address;
import com.ekthasol.asurance.models.Quote;
import com.google.gson.Gson;

public class QuoteGenerationService {
	
	public String getVehiclesList(Address address) {

		Gson gson = new Gson();
		String jsonInString = gson.toJson(address);
		String output = jsonInString;
		System.out.println("Inside UI Client" + output);

		// String output = null;

		try {

			URL url = new URL("http://localhost:8080/DMVAccessorApp/rest/getvehicles/getList");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");

			OutputStream os = conn.getOutputStream();
			os.write(output.getBytes());
			os.flush();

			if (conn.getResponseCode() != 200) {
				return null;
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			System.out.println("Output from Server .... \n");
			String outputtoUI;
			while ((outputtoUI = br.readLine()) != null) {
				return outputtoUI;
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		return null;

	}
	
	public Quote getQuoteAmount(Quote quote){
		
		 final String uri = "http://localhost:8080/QuoteGenerationApp/getQuote";
		 
		    RestTemplate restTemplate = new RestTemplate();
		    Quote resultQuote = restTemplate.postForObject( uri, quote, Quote.class);
		 
		    System.out.println(resultQuote);
		
		return resultQuote;
	}

}
