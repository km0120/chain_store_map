package controllers.toppage;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Store;
import utils.DBUtil;

/**
 * Servlet implementation class TopPageIndexServlet
 */
@WebServlet("/index.html")
public class TopPageIndexServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopPageIndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

        /**
         * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
         */
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            EntityManager em = DBUtil.createEntityManager();

            List<Store> stores = em.createNamedQuery("getAllStores", Store.class).getResultList();

            long stores_count = (long)em.createNamedQuery("getStoresCount", Long.class).getSingleResult();

            em.close();

            request.setAttribute("stores", stores);
            request.setAttribute("stores_count", stores_count);



                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/topPage/index.jsp");
                rd.forward(request, response);
        }



}