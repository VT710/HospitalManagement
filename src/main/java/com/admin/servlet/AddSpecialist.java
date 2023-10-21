package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBconnect;
import com.entity.User;
@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String speName = req.getParameter("speName");
		
		
		SpecialistDao dao= new SpecialistDao(DBconnect.getConn());
		boolean f = dao.addSpecialist(speName);
		
		HttpSession session = req.getSession();
		
		
		if(f) {
			session.setAttribute("sucMsg", "Specialist Added");
			resp.sendRedirect("admin/index.jsp");
		}else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("admin_login.jsp");
			
		}
	}
	

}
