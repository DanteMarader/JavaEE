package servlets.SprintJDBC_2.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConector {

    private static Connection connection;

    static {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/shop",
                    "root", ""
            );

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Tovary> getTovary() {

        ArrayList<Tovary> tovaries = new ArrayList<>();

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM tovary");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {

                Tovary tovary = new Tovary();

                tovary.setId((long) resultSet.getInt("id"));
                tovary.setName(resultSet.getString("name"));
                tovary.setDescription(resultSet.getString("description"));
                tovary.setPrice(resultSet.getInt("price"));
                tovary.setImage(resultSet.getString("image"));

                tovaries.add(tovary);
            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return tovaries;
    }

    public static Tovary getTovar (int id) {

        Tovary tovary = null;

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM tovary " +
                            "WHERE id = ?");

            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){

                tovary = new Tovary();

                tovary.setId((long) resultSet.getInt("id"));
                tovary.setName(resultSet.getString("name"));
                tovary.setDescription(resultSet.getString("description"));
                tovary.setPrice(resultSet.getInt("price"));
                tovary.setImage(resultSet.getString("image"));

            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return tovary;
    }

    public static User getUser(String email){

            User user = null;

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users WHERE email = ?");

            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){

                user = new User();

                user.setId((long) resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));

            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }

    public static void savePhone(Tovary tovary){
        try {

            PreparedStatement statement = connection.prepareStatement(
                    "UPDATE tovary SET name = ?, description = ?, price = ?, image = ? " +
                            "WHERE id = ?");

            statement.setString(1, tovary.getName());
            statement.setString(2, tovary.getDescription());
            statement.setDouble(3, tovary.getPrice());
            statement.setString(4, tovary.getImage());
            statement.setLong(5,tovary.getId());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void addUser(User user){

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO users (email, password, full_name) " +
                            "VALUES (?, ?, ?)"
            );

            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getFullName());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
