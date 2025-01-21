package com.ict.home;

public class MemberVO2 {
    private String userid;
    private String userpwd;
    private String username;
    private String email;
    private String tel;
    private String zipcode;
    private String addr;
    private String addetail;
    private String hobby;

    public MemberVO2(){}

    //toString()

    @Override
    public String toString() {
        return "MemberVO2{" +
                "userid='" + userid + '\'' +
                ", userpwd='" + userpwd + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", addr='" + addr + '\'' +
                ", addetail='" + addetail + '\'' +
                ", hobby='" + hobby + '\'' +
                '}';
    }

    //getter,setter

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getAddetail() {
        return addetail;
    }

    public void setAddetail(String addetail) {
        this.addetail = addetail;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }
}
