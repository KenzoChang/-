package NBADAO;

import java.sql.SQLException;
import java.util.List;


public interface nbaSalaryIDAO {
	public void getConnection() throws SQLException;
	public int insert(nbaSalaryBean emp) throws SQLException;
	public int update(nbaSalaryBean emp) throws SQLException;
	public int delete(int NO) throws SQLException;
	public nbaSalaryBean findByEmpno(int NO) throws SQLException;
	public List<nbaSalaryBean> getAll() throws SQLException;
	public void closeConn() throws SQLException;
} 



