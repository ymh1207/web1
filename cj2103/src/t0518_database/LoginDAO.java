package t0518_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginDAO {
	private Connection conn = null; //db연결 Connection 객체
	private PreparedStatement pstmt = null; // sql 쿼리에 변수 넣기위한 객체
	private ResultSet rs = null; 	// 데이터 결과를 담기위한 객체
	
	private String sql="";	//sql쿼리 쓸려고 만든 변수
	
	LoginVO vo = null; // vo객체 생성
	private String url="jdbc:mysql://localhost:3306/works";
	private String user="root";
	private String pwd="1234";
	
	
	// 생성자 만들면서 db연결하기 위해서..
	public LoginDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); //lib유무 확인 Class객체 forname
			conn=DriverManager.getConnection(url, user, pwd); //DriverManager 객체는 jdbc jar안에있는 객체
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾지 못했습니다.");
		} catch (Exception e) {
			System.out.println("db연동 실패");
		}
	}
	
	// 사용한 객체 반납
	public void pstmtClose() {
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {}
		}
	}
	
	public void rsClose() {
		if(rs!=null) {
			try {
				rs.close();
				pstmtClose();
			} catch (SQLException e) {}
		}
	}

	// 회원가입 정보 db에 넣기
	public int logDataInput(LoginVO vo) {
		int res=0;
		try {
			sql = "insert into login values(default,?,?,?,default,default)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.executeUpdate();
			res=1;
		} catch (SQLException e) {
			System.out.println("sql 에러");
			e.printStackTrace();
		}	finally {
			pstmtClose();
		}
		return res;
	}

	// 로그인 체크처리
	public String logDataCheck(String mid, String pwd) {
		String name = "";
		try {
			sql = "select name from login where mid=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) name = rs.getString("name"); 
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		} finally {
			rsClose();
		}
		return name;
	}
	
	public List<LoginVO> logDataList(){
		List<LoginVO> vos=new ArrayList<LoginVO>();
		try {
			sql="select * from login order by idx desc";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				vo = new LoginVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setPoint(rs.getInt("point"));
				vo.setLastdate(rs.getString("lastdate"));
				vos.add(vo);
			}
//			System.out.println("vos : "+vos);
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		} finally {
			rsClose();
		}
		return vos;
	}
	
	
	//탈퇴
	public void logDataDelete(String mid) {
		try {
			sql = "delete from login where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql 에러");
			e.printStackTrace();
		}	finally {
			pstmtClose();
		}
	}
	
	//회원정보수정을 위한 input 에 data 출력용
	public LoginVO logDataSearch(String mid) {
		vo = new LoginVO();
		try {
			sql="select * from login where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		} finally {
			rsClose();
		}
		return vo;
	}

	//회원정보 업데이트(수정)
	public int loginUpdate(LoginVO vo) {
		new LoginVO();
		int res=0;
		try {
			sql="update login set pwd=?, name=? where mid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPwd());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getMid());
			pstmt.executeUpdate();
			res=1;
		} catch (SQLException e) {
			System.out.println("sql 에러");
			e.printStackTrace();
		}	finally {
			pstmtClose();
		}
		return res;
	}

	//최종접속일 업데이트
	public void lastdateUpdate(String mid) {
		try {
			sql="update login set lastdate=now() where mid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql 에러");
			e.printStackTrace();
		}	finally {
			pstmtClose();
		}
	}
}
