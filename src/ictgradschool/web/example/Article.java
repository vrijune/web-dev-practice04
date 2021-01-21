package ictgradschool.web.example;

public class Article {

    private Integer id;
    private String title;
    private String content;
    private String imageFilename;

    public Article(Integer id, String title, String content, String imageFilename) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.imageFilename = imageFilename;
    }

    public Article(String title, String content, String imageFilename) {
        this.title = title;
        this.content = content;
        this.imageFilename = imageFilename;
    }

    public Article() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getImageFilename() {
        return imageFilename;
    }

    public void setImageFilename(String imageFilename) {
        this.imageFilename = imageFilename;
    }
}
