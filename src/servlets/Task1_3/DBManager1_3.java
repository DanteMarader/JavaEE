package servlets.Task1_3;

import java.util.ArrayList;

public class DBManager1_3 {
    private static final ArrayList<User1_3> USER_1_3 = new ArrayList<>();

    public static ArrayList<User1_3>getUSER1_3(){
        return USER_1_3;
    }
    public static void addUser1_3(User1_3 user1_3){
        USER_1_3.add(user1_3);
    }
}
