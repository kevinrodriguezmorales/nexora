package Models;

import java.math.BigDecimal;
import java.time.LocalDate;

public class User extends Person {

    private String password;
    private Integer jobPosition;
    private Boolean state;
    private String assignedLocation;
    private Boolean assignedAllLocations;
    private LocalDate startContract;
    private LocalDate endContract;
    private String workingHours;
    private String paymentFrequency;
    private BigDecimal salary;
    private String bankAccountNumber;

    public User() {
    }

    public User(
            int id,
            String typePerson,
            int typeIdentification,
            String numberIdentification,
            String fullname,
            String phoneNumber,
            String address,
            String city,
            String email,
            LocalDate dateBirth,
            String photo,
            String password,
            Integer jobPosition,
            Boolean state,
            String assignedLocation,
            Boolean assignedAllLocations) {
        super(
                id,
                typePerson,
                typeIdentification,
                numberIdentification,
                fullname,
                phoneNumber,
                address,
                city,
                email,
                dateBirth,
                photo);
        this.password = password;
        this.jobPosition = jobPosition;
        this.state = state;
        this.assignedLocation = assignedLocation;
        this.assignedAllLocations = assignedAllLocations;
    }

    public Boolean getAssignedAllLocations() {
        return assignedAllLocations;
    }

    public void setAssignedAllLocations(String assignedAllLocations) {
        this.assignedAllLocations = "true".equals(assignedAllLocations);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getJobPosition() {
        return jobPosition;
    }

    public void setJobPosition(String jobPosition) {
        try {
            this.jobPosition = (jobPosition != null && !jobPosition.isEmpty())
                    ? Integer.valueOf(jobPosition)
                    : null;
        } catch (NumberFormatException e) {
            this.jobPosition = null; // o lanzar excepción según tu lógica
        }
    }

    public Boolean getState() {
        return state;
    }

    public void setState(String state) {
        this.state = Boolean.valueOf(state);
    }

    public String getAssignedLocation() {
        return assignedLocation;
    }

    public void setAssignedLocation(String assignedLocation) {
        this.assignedLocation = assignedLocation;
    }

    public LocalDate getStartContract() {
        return startContract;
    }

    public void setStartContract(String startContract) {
        this.startContract = (startContract == null || startContract.isEmpty())
                ? null
                : LocalDate.parse(startContract);
    }

    public LocalDate getEndContract() {
        return endContract;
    }

    public void setEndContract(String endContract) {
        this.endContract = (endContract == null || endContract.isEmpty())
                ? null
                : LocalDate.parse(endContract);
    }

    public String getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(String workingHours) {
        this.workingHours = workingHours;
    }

    public String getPaymentFrequency() {
        return paymentFrequency;
    }

    public void setPaymentFrequency(String paymentFrequency) {
        this.paymentFrequency = paymentFrequency;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        if (salary != null && !salary.isEmpty()) {
            this.salary = new BigDecimal(salary);
        } else {
            this.salary = null;
        }
    }

    public String getBankAccountNumber() {
        return bankAccountNumber;
    }

    public void setBankAccountNumber(String bankAccountNumber) {
        this.bankAccountNumber = bankAccountNumber;
    }
    
    public String getFirstName() {
        if (this.fullname != null && !fullname.isEmpty()) {
            return this.fullname.split(" ")[0];
        }
        return "";
    }

}
