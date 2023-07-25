package servlets.Task1_2;

import servlets.Task1_2.User;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<User> users = new ArrayList<>();

    static {
        users.add(new User("Ilays","Zhuanyshev","IT",550000));
        users.add(new User("Aybek","Bagit","Management",650000));
        users.add(new User("Alibek","Sekirov","HR",350000));
        users.add(new User("Serzhan","Berikov","IT",450000));
        users.add(new User("Madina","Assetova","PR",350000));
        users.add(new User("Anel","Mukhamejanova","Management",400000));
    }

    public static ArrayList<User> getusers(){
        return users;
    }

    public static void addUser(User User){
        users.add(User);
    }

}
