package Controllers;

import Models.User;
import Models.UserDAO;
import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    User user = new User();
    UserDAO userDAO = new UserDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menuOption = request.getParameter("menu");
        String action = request.getParameter("action");
        String viewPage = this.determineView(menuOption, action);

        if (action != null && !action.isEmpty()) {
            this.processAction(request, action);
        }
        
        request.getRequestDispatcher("Views/" + viewPage + ".jsp").forward(request, response);
    }

    private String determineView(String menuOption, String action) {
        if (menuOption != null && !menuOption.isEmpty()) {
            return menuOption;
        }

        if (action.equalsIgnoreCase("ListUsers")) {
            return "Users";
        }

        return "HomeView";
    }

    private void processAction(HttpServletRequest request, String action) {
        if ("ListUsers".equalsIgnoreCase(action)) {
            List<User> users = userDAO.ListUsers();
            request.setAttribute("users", users);
        }
        
        if ("CreateUser".equalsIgnoreCase(action)) {
            this.prepareData(request);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void prepareData(HttpServletRequest request) {
        
        String identificationType = request.getParameter("userIdentificationTypeControl");
        String identificationNumber = request.getParameter("userNumberIdentificationControl");
        String fullname = request.getParameter("userFullnameControl");
        String phoneNumber = request.getParameter("userPhoneNumberControl");
        String email = request.getParameter("userEmailControl");
        String address = request.getParameter("userAddressControl");
        String city = request.getParameter("userCityControl");
        String dateBirth = request.getParameter("userDateBirthControl");
        String jobPosition = request.getParameter("userPositionControl");
        String assignedLocation = request.getParameter("userAssignedLocationControl");
        String allLocations = request.getParameter("userAllLocationsControl");
        LocalDate startContract = LocalDate.parse(request.getParameter("userContractStartDateControl"));
        LocalDate endContract = LocalDate.parse(request.getParameter("userContractEndDateControl"));
        String workingHours = request.getParameter("userWorkingHoursControl");
        String paymentFrequency = request.getParameter("userPaymentFrequencyControl");
        BigDecimal salary = new BigDecimal(request.getParameter("userSalaryControl"));
        String bankAccountNumber = request.getParameter("userBackAccountControl");
        
        user.setTypeIdentification(identificationType);
        user.setNumberIdentification(identificationNumber);
        user.setFullname(fullname);
        user.setPhoneNumber(phoneNumber);
        user.setEmail(email);
        user.setAddress(address);
        user.setCity(city);
        user.setDateBirth(dateBirth);
        
        user.setJobPosition(jobPosition);
        user.setAssignedLocation(assignedLocation);
        user.setAssignedAllLocations(allLocations);
        user.setStartContract(String.valueOf(startContract));
        user.setEndContract(String.valueOf(endContract));
        user.setWorkingHours(workingHours);
        user.setPaymentFrequency(paymentFrequency);
        user.setSalary(String.valueOf(salary));
        user.setBankAccountNumber(bankAccountNumber);
        
        userDAO.Create(user);
    }
}
