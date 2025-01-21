package com.ict.home;

//Database Access object
public class MemberDAO extends MySqlDBConnection{

        //로그인
    public MemberVO2 loginSelect(String userid,String userpwd){
        MemberVO2 vo = new MemberVO2(); // userid=null, username=null
        try{
            getConnection();

            String sql = "select userid, username from member where " +
                    "userid=? and userpwd=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, userpwd);

            rs = pstmt.executeQuery();

            if(rs.next()){
                vo.setUserid(rs.getString(1));
                vo.setUsername(rs.getString(2));
            }

        }catch(Exception e){
                e.printStackTrace();
        }finally {
            setMysqlClose();
        }
        return vo;
    }
}
