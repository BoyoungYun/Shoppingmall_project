package kr.ac.inha.dto;

public class MemberDto {
	private String name;
	private String id;
	private String pw;
	private String mail;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	@Override
	public String toString() {
		return "MemberDto [name=" + name + ", id=" + id + ", pw=" + pw + ", mail=" + mail + "]";
	}
	
}
