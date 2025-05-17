package Models;

import java.time.LocalDate;

public class Person {

    private int ID;
    private String typePerson;
    private Integer typeIdentification;
    private String numberIdentification;
    String fullname;
    private String phoneNumber;
    private String address;
    private String city;
    private String email;
    private LocalDate dateBirth;
    private String photo;

    public Person() {
    }

    public Person(int id, String typePerson, int typeIdentification, String numberIdentification, String fullname, String phoneNumber, String address, String city, String mail, LocalDate dateBirth, String photo) {
        this.ID = id;
        this.typePerson = typePerson;
        this.typeIdentification = typeIdentification;
        this.numberIdentification = numberIdentification;
        this.fullname = fullname;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.city = city;
        this.email = mail;
        this.dateBirth = dateBirth;
        this.photo = photo;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public LocalDate getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(String dateBirth) {
        this.dateBirth = (dateBirth == null || dateBirth.isEmpty())
                ? null
                : LocalDate.parse(dateBirth);
    }

    public String getTypePerson() {
        return typePerson;
    }

    public void setTypePerson(String typePerson) {
        this.typePerson = typePerson;
    }

    public Integer getTypeIdentification() {
        return typeIdentification;
    }

    public void setTypeIdentification(String typeIdentification) {
        if (typeIdentification == null || typeIdentification.trim().isEmpty()) {
            this.typeIdentification = null;  // Valor nulo si está vacío
        } else {
            try {
                this.typeIdentification = Integer.valueOf(typeIdentification);
            } catch (NumberFormatException e) {
                // Manejo de error si no es número válido
                this.typeIdentification = null; // o lanzar excepción, según convenga
            }
        }
    }

    public String getNumberIdentification() {
        return numberIdentification;
    }

    public void setNumberIdentification(String numberIdentification) {
        this.numberIdentification = numberIdentification;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
