package com.ict.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {
	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;

	// 싱글톤
	private static DAO dao = new DAO();

	public static DAO getInstance() {
		return dao;
	}

	// DB접속
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "c##chan";
			String password = "1111";
			conn = DriverManager.getConnection(url, user, password);
			return conn;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
	public List<VO> getSelectAll() {
		try {
			List<VO> list = new ArrayList<VO>();
			conn = getConnection();
			String sql = "select * from guestbook2";
			pstm = conn.prepareStatement(sql);

			rs = pstm.executeQuery();
			while (rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setSubject(rs.getString("subject"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setF_name(rs.getString("f_name"));
				vo.setMain(rs.getString("main"));
				vo.setReg(rs.getString("reg"));
				list.add(vo);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return null;
	}
	
	public VO getDetail(String idx) {
		try {
			VO vo = null;
			conn = getConnection();
			String sql = "select*from guestbook2 where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);

			rs = pstm.executeQuery();
			while (rs.next()) {
				vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setSubject(rs.getString("subject"));
				vo.setEmail(rs.getString("email"));
				vo.setF_name(rs.getString("f_name"));
				vo.setMain(rs.getString("main"));
			
			}
			return vo;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return null;
	}
	
	// insert update delete의 결과는 int
		public int getInsert(VO vo) {
			try {
				int result = 0;
				conn = getConnection();
				String sql = "insert into guestbook2 values(guestbook2_seq.nextval,?,?,?,?,?,?,sysdate)";
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, vo.getName());
				pstm.setString(2, vo.getSubject());
				pstm.setString(3, vo.getEmail());
				pstm.setString(4, vo.getPw());
				pstm.setString(5, vo.getF_name());
				pstm.setString(6, vo.getMain());
				result = pstm.executeUpdate();
				return result;
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				try {
					pstm.close();
					conn.close();
				} catch (Exception e2) {
				}
			}
			return 0;
		}
	//그림파일은 어떻게 지울것인가?
	public int getDelete(String idx) {
		try {
			int result = 0;
			conn = getConnection();
			String sql = "delete from guestbook2 where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			result = pstm.executeUpdate();
			return result;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return 0;
	}

	public int getUpdate(VO vo) {
		try {
			int result = 0;
			conn = getConnection();
			String sql = "update guestbook2 set name=?,subject=?,email=?,f_name=?, main=? where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getSubject());
			pstm.setString(3, vo.getEmail());
			pstm.setString(4, vo.getF_name());
			pstm.setString(5, vo.getMain());
			pstm.setString(6, vo.getIdx());
			result = pstm.executeUpdate();
			return result;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return 0;
	}
}
