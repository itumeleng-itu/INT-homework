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
public class updateStudentCardServlet extends HttpServlet {

    @EJB StudentCardFacadeLocal scfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String Surname= request.getParameter("surname");
        Long studentNumber = Long.parseLong(request.getParameter("studNumber"));
        
        StudentCard sc = new StudentCard();
        sc.setId(studentNumber);
        sc.setSurname(Surname);
        
        scfl.edit(sc);
        
        request.setAttribute("StudentCard", sc);
        
        RequestDispatcher disp = request.getRequestDispatcher("updatedStudent.jsp");
        disp.forward(request, response);
        
    }


}
