package com.sv;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.vo.MemberDAO;
import com.vo.memberDTO;

/**
 * Servlet implementation class joinServlet
 */
@WebServlet("/JOIN")
public class joinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      @Resource(name="jdbc/dbconn")
      private DataSource dataSource;
    
    public joinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(req, resp);
	}
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email= request.getParameter("email");
		String birth= request.getParameter("birth");
		
		memberDTO DTO = new memberDTO(id,pw,name,gender,address,phone,email,birth);
		MemberDAO DAO = new MemberDAO();
		
			DAO.insert(DTO);
			
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입에 성공하였습니다.'); location.href='main.jsp';</script>"); 
			writer.close();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
