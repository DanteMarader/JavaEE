package servlets.News_Blog.DB;

public class Comments {
    int id;
    String comment;
    String post_date;
    private Users users;
    private News news;

    public Comments() {
    }

    public Comments(int id, String comment, String post_date, Users users, News news) {
        this.id = id;
        this.comment = comment;
        this.post_date = post_date;
        this.users = users;
        this.news = news;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getPost_date() {
        return post_date;
    }

    public void setPost_date(String post_date) {
        this.post_date = post_date;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
