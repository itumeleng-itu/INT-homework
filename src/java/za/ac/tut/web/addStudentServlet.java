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
public class addStudentServlet extends HttpServlet {

    @EJB StudentCardFacadeLocal scfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long StudentNumber = Long.parseLong(request.getParameter("studNumber"));
        String Name = request.getParameter("name");
        String Surname = request.getParameter("surname");
        String Faculty = request.getParameter("faculty");
        String CourseCode = request.getParameter("coursecode");
        
        StudentCard sc = new StudentCard();
        sc.setId(StudentNumber);
        sc.setName(Name);
        sc.setSurname(Surname);;
        sc.setFaculty(Faculty);
        sc.setCoursecode(CourseCode);
        
        scfl.create(sc);
        
        request.setAttribute("studentCard", sc);
        
        RequestDispatcher disp = request.getRequestDispatcher("addStudentOutcome.jsp");
        disp.forward(request, response);
    }
}
