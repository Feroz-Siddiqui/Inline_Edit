package jaxb;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="payload")
public class JsonBean {

	String iTotalDisplayRecords;
	String 	iTotalRecords;
	ArrayList<ArrayList<String>> aaData;
	
	
	@XmlElement(name="iTotalDisplayRecords")
	public String getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}
	public void setiTotalDisplayRecords(String iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}
	@XmlElement(name="iTotalRecords")
	public String getiTotalRecords() {
		return iTotalRecords;
	}
	public void setiTotalRecords(String iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}
	@XmlElement(name="aaData")
	public ArrayList<ArrayList<String>> getAaData() {
		return aaData;
	}
	public void setAaData(ArrayList<ArrayList<String>> aaData) {
		this.aaData = aaData;
	}
	
	
	
	
}