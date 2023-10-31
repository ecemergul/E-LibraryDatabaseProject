import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.*;

public class Dbtasks {

	public static void main(String[] args) throws SQLException {
		

		Connection connect = null;
		Statement statement = null;
		ResultSet resultSet = null;

		final String host = "jdbc:postgresql://10.98.98.61:5432/postgres";
		final String user = "postgres";
		final String password = "zeus ozcan";

		try {
			System.out.println("Java JDBC PostgreSQL Example");
			// Class.forName("org.postgresql.Driver");
			Connection connection = DriverManager.getConnection(host, user, password);
			System.out.println("Connected to PostgreSQL database!");
		}
		/*
		 * catch(ClassNotFoundException e) {
		 * System.out.println("PostgreSQL JDBC driver not found."); e.printStackTrace();
		 * }
		 */
		catch (SQLException e) {
			System.out.println("Connection failure.");
			e.printStackTrace();
		}

		try {
			statement = connect.createStatement();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		System.out.println("1- List all e-books");
		System.out.println("2- List all e-magazines");
		System.out.println("3- List info of all readers");
		System.out.println("4- Insert an e-book");
		System.out.println("5- Insert an e-magazine");
		System.out.println("6- Insert a reader");
		System.out.println("7- Delete an e-book");
		System.out.println("8- Delete an e-magazine");
		System.out.println("9- Delete a reader");
		System.out.println("10- Update price of an e-book");
		System.out.println("11- Update price of an e-magazine");
		System.out.println("12- Update phone number of a reader");
		System.out.println();
		Scanner in = new Scanner(System.in);
		String input = in.nextLine();

		if (input.equals("1")) {
			System.out.println("E-books :");
			resultSet = statement.executeQuery("select ebname, loanfee from Ebook");
			writeResultSet(resultSet);
		} else if (input.equals("2")) {
			System.out.println("E-magazines :");
			resultSet = statement.executeQuery("select emtitle, loanfee from Emagazine");
			writeResultSet(resultSet);
		} else if (input.equals("3")) {
			System.out.println("Readers :");
			resultSet = statement.executeQuery("select uname, email, pnumber from Reader");
			writeResultSet(resultSet);
		} else if (input.equals("4")) {
			System.out.println("1- Enter the new e-book ID:");
			String ebookID = in.nextLine();
			System.out.println("2- Enter the new e-book Name:");
			String ebname = in.nextLine();
			System.out.println("3- Enter the new e-book First Published Year:");
			String ebyear = in.nextLine();
			System.out.println("4- Enter the new e-book Page Number:");
			String ebpage = in.nextLine();
			System.out.println("5- Enter the new e-book Price:");
			String loanfee = in.nextLine();

			statement.executeUpdate("insert into Ebook " + "(ebookID, ebname, ebyear, ebpage, loanfee)" + "values ('"
					+ ebookID + "', '" + ebname + "', '" + ebyear + "', '" + ebpage + "', '" + loanfee + "')");

		} else if (input.equals("5")) {
			System.out.println("1- Enter the new e-magazine ID:");
			String emID = in.nextLine();
			System.out.println("2- Enter the new e-magazine Brand:");
			String emtitle = in.nextLine();
			System.out.println("3- Enter the new e-magazine Issue:");
			String emissue = in.nextLine();
			System.out.println("4- Enter the new e-magazine Page Number:");
			String empage = in.nextLine();
			System.out.println("5- Enter the new e-magazine Price:");
			String loanfee = in.nextLine();

			statement.executeUpdate("insert into Emagazine " + "(emID, emtitle, emissue, empage, loanfee)" + "values ('"
					+ emID + "', '" + emtitle + "', '" + emissue + "', '" + empage + "', '" + loanfee + "')");

		} else if (input.equals("6")) {
			System.out.println("1- Enter the new reader ID:");
			String uID = in.nextLine();
			System.out.println("2- Enter the new reader Name:");
			String uname = in.nextLine();
			System.out.println("3- Enter the new reader Email:");
			String email = in.nextLine();
			System.out.println("4- Enter the new reader Phone Number:");
			String pnumber = in.nextLine();

			statement.executeUpdate("insert into Reader " + "(uID, uname, email, pnumber)" + "values ('" + uID
					+ "', '" + uname + "', '" + email + "', '" + pnumber + "')");

		} else if (input.equals("7")) {
			System.out.println("Enter the ID of the e-book to delete it:");
			String ebookID = in.nextLine();
			statement.executeUpdate("delete from Ebook where ebookID = '" + ebookID + "'");
		} else if (input.equals("8")) {
			System.out.println("Enter the ID of the e-magazine to delete it:");
			String emID = in.nextLine();
			statement.executeUpdate("delete from Emagazine where emID = '" + emID + "'");
		} else if (input.equals("9")) {
			System.out.println("Enter the ID of the reader to delete him/her:");
			String uID = in.nextLine();
			statement.executeUpdate("delete from Emagazine where uID = '" + uID + "'");
		} else if (input.contentEquals("10")) {
			System.out.println("Enter the ID of the e-book to update it's price:");
			String ebookID = in.nextLine();
			System.out.println("Enter the new price;");
			String loanfee = in.nextLine();
			statement.executeUpdate("update Ebook set loanfee = '" + loanfee + "' where ebookID = '" + ebookID + "'");
		} else if (input.contentEquals("11")) {
			System.out.println("Enter the ID of the e-magazine to update it's price:");
			String emID = in.nextLine();
			System.out.println("Enter the new price;");
			String loanfee = in.nextLine();
			statement.executeUpdate("update Emagazine set loanfee = '" + loanfee + "' where emID = '" + emID + "'");
		} else {
			System.out.println("Enter the ID of the reader to update his/her phone number:");
			String uID = in.nextLine();
			System.out.println("Enter the new phone number;");
			String pnumber = in.nextLine();
			statement.executeUpdate("update Reader set pnumber = '" + pnumber + "' where uID = '" + uID + "'");
		}

	}

	private static void writeResultSet(ResultSet resultSet) throws SQLException {
		ResultSetMetaData rsmd = resultSet.getMetaData();
		int columnsNumber = rsmd.getColumnCount();
		while (resultSet.next()) {
			for (int i = 1; i <= columnsNumber; i++)
				System.out.print(resultSet.getString(i) + " ");
			System.out.println();
		}
	}

	private static void close() {
		Connection connect = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
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