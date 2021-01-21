package ictgradschool.web.example;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ArticleDAO {

    public static List<Article> getAllArticles(Connection conn) throws SQLException {

        List<Article> articles = new ArrayList<>();

        try (Statement stmt = conn.createStatement()) {

            try (ResultSet rs = stmt.executeQuery("SELECT id, title, content, imageFilename FROM lab17_articles")) {

                while (rs.next()) {
                    Article article = getArticleFromResultSet(rs);
                    articles.add(article);
                }

            }

        }

        return articles;

    }

    public static Article getArticleById(int id, Connection conn) throws SQLException {

        try (PreparedStatement stmt = conn.prepareStatement(
                "SELECT id, title, content, imageFilename FROM lab17_articles WHERE id = ?")) {

            stmt.setInt(1, id);

            try (ResultSet rs = stmt.executeQuery()) {

                if (rs.next()) {

                    return getArticleFromResultSet(rs);

                } else {
                    return null;
                }

            }

        }

    }

    private static Article getArticleFromResultSet(ResultSet rs) throws SQLException {
        return new Article(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4)
        );
    }

    public static boolean insertArticle(Article article, Connection conn) throws SQLException {

        try (PreparedStatement stmt = conn.prepareStatement(
                "INSERT INTO lab17_articles (title, content, imageFilename) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS)) {

            stmt.setString(1, article.getTitle());
            stmt.setString(2, article.getContent());
            stmt.setString(3, article.getImageFilename());

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected == 0) {
                return false;
            }

            try (ResultSet keys = stmt.getGeneratedKeys()) {
                keys.next(); // Move to the fist row.
                int id = keys.getInt(1);
                article.setId(id);

                return true;
            }

        }

    }

    public static boolean deleteArticle(int id, Connection conn) throws SQLException {

        try (PreparedStatement stmt = conn.prepareStatement(
                "DELETE FROM lab17_articles WHERE id = ?")) {

            stmt.setInt(1, id);
            int rowsAffected = stmt.executeUpdate();
            return (rowsAffected == 1);

        }

    }

}
