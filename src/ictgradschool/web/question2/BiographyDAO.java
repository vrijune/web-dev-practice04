package ictgradschool.web.question2;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BiographyDAO {

    // TODO: your code here
    public static List<Biography> getAllBiographies(Connection connection) throws SQLException {

       List<Biography> biographies = new ArrayList<>();
        try (Statement stmt = connection.createStatement()) {

            try (ResultSet resultSet = stmt.executeQuery(
                    "SELECT * FROM lab_practice"
            )) {
                while (resultSet.next()) {

                    Biography biography = createBiographyFromResultSet(resultSet);
                    biographies.add(biography);
                }


            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return biographies;
    }

    private static Biography createBiographyFromResultSet(ResultSet resultSet) throws SQLException {
        Biography biography = new Biography(
                resultSet.getInt(1),
                resultSet.getString(2),
                resultSet.getString(3),
                resultSet.getString(4)

        );
        return biography;
    }
}
