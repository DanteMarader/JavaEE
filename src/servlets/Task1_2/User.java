package servlets.Task1_2;

public class User {

    private String name;
    private String surname;
    private String departament;
    private int salary;

    public User() {
        this.name = "No Name";
        this.surname = "No SurName";
        this.departament = "No departament";
        this.salary = 0;
    }

    public User(String name, String surname, String departament, int salary) {
        this.name = name;
        this.surname = surname;
        this.departament = departament;
        this.salary = salary;
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

    public String getDepartament() {
        return departament;
    }

    public void setDepartament(String departament) {
        this.departament = departament;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
