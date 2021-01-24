package ictgradschool.web.question2;

public class Biography {

    // TODO: your code here

    private Integer id;
    private String firstName;
    private String content;
    private String imageFilename;

    public Biography(Integer id, String firstName, String content, String imageFilename) {
        this.id = id;
        this.firstName = firstName;
        this.content = content;
        this.imageFilename = imageFilename;
    }

    public Biography(String firstName, String content, String imageFilename) {

        this.firstName = firstName;
        this.content = content;
        this.imageFilename = imageFilename;
    }

    public Biography(){

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
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
