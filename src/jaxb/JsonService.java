package jaxb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;

public class JsonService {

	
	public void generateJson(Object obj1, HttpServletRequest request, HttpServletResponse response)
	 {
			ObjectMapper mapper = new ObjectMapper();
			AnnotationIntrospector introspector = new JacksonAnnotationIntrospector();
			mapper.setAnnotationIntrospector(introspector);
			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e1) {
				
			}
			response.setContentType("application/json");
			response.addHeader("Access-Control-Allow-Origin", "*");
			String result = null;
			try {
				result = mapper.writeValueAsString(obj1);
			} catch (JsonProcessingException e) {
				
				
			}
			System.out.println(result);
			out.println(result);

		}	
	
	
}
