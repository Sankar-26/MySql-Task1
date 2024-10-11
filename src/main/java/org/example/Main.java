package org.example;

import java.sql.*;

public class Main {
    public static void main(String[] args) throws SQLException {

        String url = "jdbc:mysql://localhost:3306/";
        String user = "root";
        String password = "Cgi@2022";


        String createDatabase = "CREATE DATABASE IF NOT EXISTS mySqlTask";
        String useDatabase ="use mySqlTask";
        String createTableQuery = "create table IF NOT EXISTS Employee(empcode int not null,empname varchar(50) not null,empage int not null,esalary int not null)";
        String insertValues = "insert into Employee(empcode,empname,empage,esalary) \n" +
                "values\n" +
                "(101,'Jenny',25,10000),  \n" +
                "(102,'Jacky',30,20000),  \n" +
                "(103,'Joe',20,40000),  \n" +
                "(104,'John',40,80000),  \n" +
                "(105,'Shameer',25,90000)";
        String viewTable ="select * from Employee";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {

            Statement statement = connection.createStatement();

            statement.executeUpdate(createDatabase);
            System.out.println("Database created");

            statement.executeUpdate(useDatabase);
            statement.executeUpdate(createTableQuery);
            System.out.println("Employee table created");

            statement.executeUpdate(insertValues);
            System.out.println("Values are inserted to the Employee table");

            ResultSet resultSet =statement.executeQuery(viewTable);
            System.out.println("Displaying Table details:");
            System.out.printf("%-15s %-15s %-15s %-15s%n", "Employee Code", "Name", "Age", "Salary");
            System.out.println("--------------------------------------------------------------------");
            while (resultSet.next()) {

                System.out.printf("%-15d %-15s %-15s %-15s%n", resultSet.getInt(1) , resultSet.getString(2) , resultSet.getInt(3) , resultSet.getInt(4));

            }

        };

    }
}