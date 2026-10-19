package pl.merito.rankinggry.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/games/added")
public class GameAddedServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().println("<!DOCTYPE html><html><body>"
                + "<h1>Zapisano Grę: " + req.getParameter("title") + " w bazie danych!" + "</h1>"
                + "<a href='add'>Dodaj kolejną</a></body></html>");
    }
}
