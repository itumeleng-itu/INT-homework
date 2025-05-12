/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.StudentCard;
import za.ac.tut.entity.StudentCardFacadeLocal;

/**
 *
 * @author matom
 */
public class searchStudentServlet extends HttpServlet {
    
    @EJB StudentCardFacadeLocal scfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long studentNumber = Long.parseLong(request.getParameter("studentNumber"));
        
        //StudentCard sc = new StudentCard();
        //sc.setId(studentNumber);
        
        StudentCard  sc = scfl.find(studentNumber);
        
        request.setAttribute("studentCard", sc);
        
        RequestDispatcher disp = request.getRequestDispatcher("searchStudentOutcome.jsp");
        disp.forward(request, response);
        
    }
}
