package kr.yorami.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import kr.yorami.model.lactationDAO;
import kr.yorami.model.lactationVO;

@WebServlet("/Lac")
public class Lac extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<lactationVO> list2 = new ArrayList<lactationVO>();
		lactationDAO dao = new lactationDAO();
		//List<lactationVO> list = dao.selectLac();
		
		
		//System.out.println(dao.lactationgraph(16));
		//list2.add(dao.lactationgraph(20210417));
		//list2.add(dao.lactationgraph(20210418));
		//list2.add(dao.lactationgraph(20210419));
		list2.add(dao.lactationgraph(20210430));
		list2.add(dao.lactationgraph(20210501));
		list2.add(dao.lactationgraph(20210502));
		list2.add(dao.lactationgraph(20210503));
		list2.add(dao.lactationgraph(20210504));
		list2.add(dao.lactationgraph(20210505));
		list2.add(dao.lactationgraph(20210506));
		list2.add(dao.lactationgraph(20210507));
		list2.add(dao.lactationgraph(20210508));
		list2.add(dao.lactationgraph(20210509));
		
		

		//ArrayList<lactationVO> list2 = new ArrayList<lactationVO>();
		
		//list2.add(l_ml11);
		Gson gson = new Gson();
		response.setCharacterEncoding("UTF-8");
		System.out.println(gson.toJson(list2));
		
		response.getWriter().print(gson.toJson(list2));
		
	
	}

}
