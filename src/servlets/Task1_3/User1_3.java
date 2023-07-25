package servlets.Task1_3;

public class User1_3 {
    private String name;
    private String surname;
    private String food;

    public User1_3() {
    }

    public User1_3(String name, String surname, String food) {
        this.name = name;
        this.surname = surname;
        this.food = food;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
}
