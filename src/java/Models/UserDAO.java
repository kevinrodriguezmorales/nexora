package Models;

import Config.ConnectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO {

    public Connection connection;
    public ResultSet resultSet;
    public PreparedStatement preparedStatement;

    ConnectionDB connectionDAO = new ConnectionDB();
    int r;

    public User Validate(String email, String password) {
        User user = new User();
        // String query = "SELECT * FROM users WHERE email = ? AND password_hash = ?";
        String query = "SELECT "
                + "u.id AS user_id, "
                + "u.password_hash, "
                + "u.job_position_id, "
                + "u.assigned_location, "
                + "u.state, "
                + "u.all_locations, "
                + "p.email, "
                + "p.fullname, "
                + "p.photo "
                + "FROM "
                + "users u "
                + "JOIN "
                + "person p ON u.person_id = p.id "
                + "WHERE "
                + "p.email = ? AND u.password_hash = ?";
        connection = connectionDAO.ConnectionDB();

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();

            do {
                user.setID(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password_hash"));
                user.setEmail(resultSet.getString("email"));
                user.setFullname(resultSet.getString("fullname"));
                user.setJobPosition(String.valueOf(resultSet.getInt("job_position_id")));
                user.setAssignedLocation(resultSet.getString("assigned_location"));
                user.setState(String.valueOf(resultSet.getBoolean("state")));
                user.setAssignedAllLocations(String.valueOf(resultSet.getBoolean("all_locations")));
                user.setPhoto(resultSet.getString("photo"));
            } while (resultSet.next());
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
    }

    public List ListUsers() {
        String query = "SELECT "
                + "u.id AS user_id, "
                + "u.password_hash, "
                + "u.job_position_id,"
                + "u.state, "
                + "p.fullname, "
                + "p.email, "
                + "p.identification_number, "
                + "p.identification_type_id, "
                + "p.phone_number "
                + "FROM users u "
                + "JOIN person p ON u.person_id = p.id";
        List<User> users = new ArrayList();

        try {
            connection = connectionDAO.ConnectionDB();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User user = new User();

                user.setID(resultSet.getInt("user_id"));
                user.setNumberIdentification(resultSet.getString("identification_number"));
                user.setTypeIdentification(String.valueOf(resultSet.getInt("identification_type_id")));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setFullname(resultSet.getString("fullname"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password_hash"));
                user.setState(String.valueOf(resultSet.getBoolean("state")));
                user.setJobPosition(String.valueOf(resultSet.getInt("job_position_id")));
                users.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return users;
    }

    public int Create(User user) {
        String insertPersonSQL = "INSERT INTO person ("
                + "person_type_id, "
                + "identification_type_id, "
                + "identification_number, "
                + "fullname, "
                + "phone_number, "
                + "address, "
                + "city, "
                + "email, "
                + "date_birth, "
                + "photo ) VALUES (?,?,?,?,?,?,?,?,?,?)";
        String insertUserSQL = "INSERT INTO users ("
                + "password_hash, "
                + "state, "
                + "assigned_location, "
                + "all_locations, "
                + "person_id, "
                + "job_position_id, "
                + "start_contract, "
                + "end_contract, "
                + "working_hours, "
                + "payment_frequency, "
                + "salary, "
                + "bank_account_number) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        String password = PasswordGenerator.generateDefaultPassword();
        user.setPassword(password);

        try {
            connection = connectionDAO.ConnectionDB();
            PreparedStatement personStmt = connection.prepareStatement(insertPersonSQL, Statement.RETURN_GENERATED_KEYS);

            personStmt.setInt(1, 3);
            personStmt.setInt(2, user.getTypeIdentification());
            personStmt.setString(3, user.getNumberIdentification());
            personStmt.setString(4, user.getFullname());
            personStmt.setString(5, user.getPhoneNumber());
            personStmt.setString(6, user.getAddress());
            personStmt.setString(7, user.getCity());
            personStmt.setString(8, user.getEmail());
            personStmt.setObject(9, user.getDateBirth(), Types.DATE);
            personStmt.setString(10, user.getPhoto());

            int affectedRows = personStmt.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("No se pudo insertar la persona");
            }

            // Obtener ID generado
            ResultSet generatedKeys = personStmt.getGeneratedKeys();

            int personID;

            if (generatedKeys.next()) {
                personID = generatedKeys.getInt(1);
            } else {
                throw new SQLException("No se pudo obtener el ID de la persona");
            }

            PreparedStatement userStmt = connection.prepareStatement(insertUserSQL);

            userStmt.setString(1, user.getPassword());
            userStmt.setObject(2, 1, Types.BOOLEAN);
            userStmt.setString(3, user.getAssignedLocation());
            userStmt.setObject(4, 0, Types.BOOLEAN);
            userStmt.setInt(5, personID);
            userStmt.setInt(6, user.getJobPosition());
            userStmt.setObject(7, user.getStartContract(), Types.DATE);
            userStmt.setObject(8, user.getEndContract(), Types.DATE);
            userStmt.setString(9, user.getWorkingHours());
            userStmt.setString(10, user.getPaymentFrequency());
            if (user.getSalary() != null) {
                userStmt.setBigDecimal(11, user.getSalary());
            } else {
                userStmt.setNull(11, Types.DECIMAL);
            }
            userStmt.setString(12, user.getBankAccountNumber()); // bank_account_number
            userStmt.executeUpdate();
            
            System.out.println("usuario" + personID);

        } catch (SQLException ex) {
            System.out.println("Error al crear usuario: " + ex.getMessage());
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }
}
