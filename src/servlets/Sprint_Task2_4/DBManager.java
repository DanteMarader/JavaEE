package servlets.Sprint_Task2_4;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Tasks> exercise = new ArrayList<>();
    private static int id = 6;

    static {
        exercise.add(new Tasks(1,"Создать Веб прииложение на JAVA EE","Создать Его","2023-04-23",true));
        exercise.add(new Tasks(2,"Убраться дома и закупить продукты","Убраться и  Пойти в магазин","2023-04-25",true));
        exercise.add(new Tasks(3,"Выполнить все домашние задания","Сделай это!))","2023-40-28",false));
        exercise.add(new Tasks(4,"Записаться в зал","Давно пора","2023-05-21",false));
        exercise.add(new Tasks(5,"Выучить Японский язык","Вспомнить что не практиковал","2023-06-23",false));
    }

    public static ArrayList<Tasks> getExercise() {
        return exercise;
    }

    public static void addTask(Tasks tasks) {
        tasks.setId(id);
        exercise.add(tasks);
        id++;
    }
    public static Tasks getIdishka(int id){
        for (Tasks it : exercise){
            if(it.getId()==id)
                return it;
        }
        return null;
    }
    public static void deleteTask(int id){
        for (int i = 0; i < exercise.size(); i++) {
            if(exercise.get(i).getId()==id){
                exercise.remove(i);
            }
        }
    }
    public static void updateTask(int id,Tasks tasks){
        for (int i = 0; i < exercise.size(); i++) {
            if (exercise.get(i).getId()==id){
                exercise.set(i,tasks);
            }
        }
    }
}
