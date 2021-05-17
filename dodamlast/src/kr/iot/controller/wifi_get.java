package kr.iot.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.google.gson.Gson;

import kr.yorami.model.lactationDAO;
import kr.yorami.model.playDAO;
import kr.yorami.model.playVO;

@WebServlet("/wifi_get")
public class wifi_get extends HttpServlet {   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
      playDAO dao = new playDAO();
      playVO vo = dao.playselect();
      Gson gs = new Gson();
     String json = gs.toJson(vo);
     System.out.println(json);
     System.out.println("REAL");
     PrintWriter out = response.getWriter();
     //response.getWriter().print(json);
     out.println("/"+json+"/");
   }
}