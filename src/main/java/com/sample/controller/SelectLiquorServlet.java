package com.sample.controller;

import com.sample.model.LiquorType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SelectLiquor")
public class SelectLiquorServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("/WEB-INF/inventory.jsp").forward(req,resp);
  }

  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String liquorType = req.getParameter("Type");

        LiquorService liquorService = new LiquorService();
        LiquorType brandType = LiquorType.valueOf(liquorType);

        var liquorBrands = liquorService.getAvailableBrands(brandType);

        req.setAttribute("brands", liquorBrands);
        req.getRequestDispatcher("WEB-INF/results.jsp").forward(req,resp);
    }
}
