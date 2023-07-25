package servlets.News_Blog.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBC_News {

    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/news blog",
                    "root", "");


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Users getUser(String email) {

        Users user = null;

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users_news WHERE email = ?");

            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {

                user = new Users();

                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setRole_id(resultSet.getInt("role_id"));

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public static void addUser(Users user) {

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO users_news (email, password, full_name, role_id) " +
                            "VALUES (?, ?, ?, 2)"
            );

            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getFullName());

            statement.executeUpdate();
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addNews(News news){

        try {
            PreparedStatement statement = connection.prepareStatement(
                    " INSERT INTO news (category_id, title, content, user_id, post_date) " +
                            "VALUES (?, ?, ?, ?, NOW())");
            statement.setInt(1,news.getNewsCategories().getId());
            statement.setString(2, news.getTitle());
            statement.setString(3, news.getContent());
            statement.setInt(4,news.getUsersNews().getId());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public static ArrayList<News_Categories> getCategories() {

        ArrayList<News_Categories> categories = new ArrayList<>();

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM  news_categories"
            );

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                News_Categories newsCategories = new News_Categories();
                newsCategories.setId(resultSet.getInt("id"));
                newsCategories.setName(resultSet.getString("name"));

                categories.add(newsCategories);
            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    public static News_Categories getCategory(int id){

        News_Categories categories = null;

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM news_categories WHERE id = ?" );

            statement.setInt(1,id);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){

                categories = new News_Categories();

                categories.setId(resultSet.getInt("id"));
                categories.setName(resultSet.getString("name"));
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return categories;
    }

    public static Users  getUserId(int id){

        Users users = null;

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users_news WHERE id = ?"
            );

            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {

                users = new Users();

                users.setId(resultSet.getInt("id"));
                users.setEmail(resultSet.getString("email"));
                users.setPassword(resultSet.getString("password"));
                users.setFullName(resultSet.getString("full_name"));
                users.setRole_id(resultSet.getInt("role_id"));

            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
}
