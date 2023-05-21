package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			//creating session
			Session s = FactoryProvider.getFactory().openSession();
			//begin transaction
			Transaction tx = s.beginTransaction();
			//geting note object
			Note note = (Note)s.get(Note.class, noteId);
			//deleting note
			s.delete(note);
			//commiting transaction
			tx.commit();
			//closing session
			s.close();
			//redirecting to allnotes pages
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	}


