package NBADAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class nbaSalaryDAO {

	DataSource ds = null;

	public nbaSalaryDAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/NBA_Salary");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String SELECT_BY_ID = "Select  * from salary where NO = ?";

	public nbaSalaryBean select(String NO) {
		nbaSalaryBean result = null;
		try (Connection conn = ds.getConnection(); PreparedStatement stmt = conn.prepareStatement(SELECT_BY_ID);) {
			stmt.setString(1, NO);
			try (ResultSet rset = stmt.executeQuery()) {
				if (rset.next()) {
					result = new nbaSalaryBean();
					result.setNO((rset.getInt("nO")));
					result.setNAME(rset.getString("nAME"));
					result.setPOS(rset.getString("pOS"));
					result.setTEAM(rset.getString("tEAM"));
					result.setSEASON(rset.getString("sEASON"));
					result.setSALARY(rset.getInt("sALARY"));		
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	private static final String SELECT_ALL = "Select *from salary";

	public List<nbaSalaryBean> select() {
		List<nbaSalaryBean> result = null;
		try (Connection conn = ds.getConnection();
				PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);
				ResultSet rset = stmt.executeQuery();) {
			result = new Vector<>();
			while (rset.next()) {
				nbaSalaryBean temp = new nbaSalaryBean();
				temp.setSEASON(rset.getString("sEASON"));
				temp.setSALARY(rset.getInt("sALARY"));
				temp.setNO(rset.getInt("nO"));
				temp.setPOS(rset.getString("pOS"));
				temp.setNAME(rset.getString("nAME"));
				temp.setTEAM(rset.getString("tEAM"));
				result.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	private static final String INSERT = "Insert into salary (SEASON, SALARY, POS, NAME, TEAM, NO) values (?, ?, ?, ?, ?, ?)";

	public nbaSalaryBean insert(nbaSalaryBean bean) throws SQLException {
		nbaSalaryBean result = null;
		Connection conn = ds.getConnection();
		PreparedStatement stmt = conn.prepareStatement(INSERT);
		stmt.setString(1, bean.getSEASON());
		stmt.setInt(2, bean.getSALARY());
		stmt.setString(3, bean.getPOS());
		stmt.setString(4, bean.getNAME());
		stmt.setString(5, bean.getTEAM());
		stmt.setInt(6, bean.getNO());
		stmt.executeUpdate();

		return result;
	}

	private static final String DELETE = "Delete from salary where NO=?";

	public int delete(int nO) {
		int result = 0;
		try (Connection conn = ds.getConnection(); PreparedStatement stmt = conn.prepareStatement(DELETE);) {
			stmt.setInt(1, nO);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	private static final String UPDATE = "UPDATE salary SET NAME=?, SALARY=?, POS=?, SEASON=?, TEAM=? WHERE NO=?";

	public nbaSalaryBean update(nbaSalaryBean bean) throws SQLException {
		nbaSalaryBean result = null;
		try (Connection conn = ds.getConnection(); PreparedStatement stmt = conn.prepareStatement(UPDATE);) {
			stmt.setString(1, bean.getNAME());
			stmt.setInt(2, bean.getSALARY());
			stmt.setString(3, bean.getPOS());
			stmt.setString(4, bean.getSEASON());
			stmt.setString(5, bean.getTEAM());
			stmt.setInt(6, bean.getNO());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

}