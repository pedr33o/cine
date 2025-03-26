package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLAccess {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;


	public void readDataBase() throws Exception {
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");

			// Setup the connection with the DB
			connect = DriverManager
					.getConnection("jdbc:mysql://127.0.0.1:3306/?user=root");

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery("select * from usuario;");
			writeResultSet(resultSet);
			
			System.out.println("Banco de Dados Conectado com sucesso!");

		} catch (Exception e) {
			throw e;
		} finally {
			close();
		}

	}

	
	private void writeResultSet(ResultSet resultSet) throws SQLException {

		while (resultSet.next()) {

			String meuID = resultSet.getString("id");
			String meuNome = resultSet.getString("nome");
			String minhaIdade = resultSet.getString("idade");
			String meuEmail = resultSet.getString("email");

			System.out.println("id: " + meuID);
			System.out.println("nome: " + meuNome);
			System.out.println("idade: " + minhaIdade);
			System.out.println("emal: " + meuEmail);

		}
	}
	
	// You need to close the resultSet
	private void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			if (statement != null) {
				statement.close();
			}

			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {

		}
	}

}