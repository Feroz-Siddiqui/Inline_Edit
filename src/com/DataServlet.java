package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jaxb.JsonBean;
import jaxb.JsonService;

/**
 * Servlet implementation class DataServlet
 */
@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
System.out.println("incoming parameter :: "+request.getParameter("editParameter"));
	JsonBean bean = new JsonBean();
	JsonService service = new JsonService();
bean.setiTotalDisplayRecords("1");
bean.setiTotalRecords("1");
ArrayList<ArrayList<String>> aaData = new ArrayList<>();

ArrayList<String> data = new ArrayList<>();
data.add("\r\n<span  align='center' ><a 107 class='hyperlink' target='_new' href='report?arg=3324098___IPSV00001706&id=323&dummy_arg0=dummy_arg0&dummy_arg1=dummy_arg1&startDate=12-04-2016&startIndex=0&timespan=Days&endDate=12-04-2016&endIndex=50&customer=NO_CUSTOMER'>IPSV00001706</a></span>\r\n");
data.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 ><div class='editable'>05:50</div></span>\r\n");
data.add("\r\n<span align='center' india313 class=''>80</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>134</span>\r\n");


ArrayList<String> data1 = new ArrayList<>();

data1.add("\r\n<span  align='center' ><a 107 class='hyperlink' target='_new' href='report?arg=3324098___IPSV00001706&id=323&dummy_arg0=dummy_arg0&dummy_arg1=dummy_arg1&startDate=12-04-2016&startIndex=0&timespan=Days&endDate=12-04-2016&endIndex=50&customer=NO_CUSTOMER'>IPSV00001706</a></span>\r\n");
data1.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data1.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data1.add("\r\n<span align='center' india313 ><div class='editable'>05:50</div></span>\r\n");
data1.add("\r\n<span align='center' india313 class=''>80</span>\r\n");
data1.add("\r\n<span align='center' india313 class=''>134</span>\r\n");


/*data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>BM/TH</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>349941</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>/shelf=1/slot=7/sub_slot=2/subsub_slot=5/port=1</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>Edge Rt</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>BM/TH</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>254694</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>/shelf=1/slot=3/port=1</span>\r\n");
data.add("\r\n<span align='center' india313 class=''>BRAS</span>\r\n");
data.add("\r\n<span align='center' india313  data-seid='3324098' data-originalvalue='---'> &nbsp;&nbsp;<i class='fa fa-pencil-square-o editable'></i>&nbsp;---</span>\r\n");
*/
aaData.add(data);
aaData.add(data1);




ArrayList<String> data3 = new ArrayList<>();

data3.add("\r\n<span  align='center' ><a 107 class='hyperlink' target='_new' href='report?arg=3324098___IPSV00001706&id=323&dummy_arg0=dummy_arg0&dummy_arg1=dummy_arg1&startDate=12-04-2016&startIndex=0&timespan=Days&endDate=12-04-2016&endIndex=50&customer=NO_CUSTOMER'>IPSV00001706</a></span>\r\n");
data3.add("\r\n<span align='center' india313 class=''>0</span>\r\n");
data3.add("\r\n<span align='center' india313 class=''>---</span>\r\n");
data3.add("\r\n<span align='center' india313 ><div class='editable'>05:50</div></span>\r\n");
data3.add("\r\n<span align='center' india313 class=''>80</span>\r\n");
data3.add("\r\n<span align='center' india313 class=''>134</span>\r\n");

aaData.add(data3);

bean.setAaData(aaData);
service.generateJson(bean, request, response);



	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
