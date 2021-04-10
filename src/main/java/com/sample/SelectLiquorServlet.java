package com.sample;

import com.sample.model.LiquorType;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(
        name = "selectliquorservlet",
        urlPatterns = "/SelectLiquor"
)
public class SelectLiquorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String liquorType = req.getParameter("Type");

        LiquorService liquorService = new LiquorService();
        LiquorType brandType = LiquorType.valueOf(liquorType);

        var liquorBrands = liquorService.getAvailableBrands(brandType);

        req.setAttribute("brands", liquorBrands);
        req.getRequestDispatcher("results.jsp").forward(req,resp);
    }
}