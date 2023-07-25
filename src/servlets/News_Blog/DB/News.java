package servlets.News_Blog.DB;

public class News {
    int id;
    String post_date;
    private News_Categories newsCategories;
    private Users usersNews;
    String title;
    String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPost_date() {
        return post_date;
    }

    public void setPost_date(String post_date) {
        this.post_date = post_date;
    }

    public News_Categories getNewsCategories() {
        return newsCategories;
    }

    public void setNewsCategories(News_Categories newsCategories) {
        this.newsCategories = newsCategories;
    }

    public Users getUsersNews() {
        return usersNews;
    }

    public void setUsersNews(Users usersNews) {
        this.usersNews = usersNews;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
