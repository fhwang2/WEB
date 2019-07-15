package kr.mycom.dao;

//한 튜플에 대한 정보를 묶는 것
public class MessageVo {
	//보안을 위해 변수 선언할 때 변수명을 실제 필드와 다르게 선언
	//msgid=message_id, pw=password, writer=guest_name, content=message
	private int msgid;
	private String pw;
	private String writer;
	private String content;
	
	
	public int getMsgid() {
		return msgid;
	}
	public void setMsgid(int msgid) {
		this.msgid = msgid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	@Override
	public String toString() {
		return "MessageVo [msgid=" + msgid + ", pw=" + pw + ", writer=" + writer + ", content=" + content + "]";
	}
	
	
	
	
	
}
