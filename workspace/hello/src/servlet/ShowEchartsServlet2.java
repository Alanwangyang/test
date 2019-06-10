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

import com.alibaba.fastjson.JSON;

import dao.IndustryDao;
import domain.Industry;
import domain.Industry2;
import net.sf.json.JSONObject;

public class ShowEchartsServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 public static <T> String serialize(T object) {
         return JSON.toJSONString(object);
     }

	public ShowEchartsServlet2() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		IndustryDao industryDao = new IndustryDao();
		List<Industry2> industries = industryDao.findIndustry2();
		String json = serialize(industries);
		response.setCharacterEncoding("utf-8");
		System.out.println(json);
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

}
