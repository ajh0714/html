package com.ict.home;

public class MemberVO {
    private int num;
    private String username;
    private String tel;
    private String addr;

    public MemberVO(int num, String username, String tel, String addr) {
        this.num = num;
        this.username = username;
        this.tel = tel;
        this.addr = addr;

    }

    public int getNum() {
        return num;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setNum(int num) {
        this.num = num;
    }
}
