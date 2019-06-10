package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.IndustryDao;
import domain.Industry;
import net.sf.json.JSONObject;

public class ShowEchartsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ShowEchartsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		IndustryDao industryDao = new IndustryDao();
		List<Industry> industries = industryDao.findIndustry();
		int size = industries.size();
		
		//将数据存入数组
		String [] month = new String[size];
		int [] data1 = new int[size];
		int [] data2 = new int[size];
		for (int i = 0; i < size; i++) {
			month[i]=industries.get(i).getName();
			data1[i]=industries.get(i).getIn_value();
			data2[i]=industries.get(i).getOut_vlaue();
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("month", month);
		map.put("data1", data1);
		map.put("data2", data2);
		response.setCharacterEncoding("utf-8");
		JSONObject json = JSONObject.fromObject(map);
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}
}
