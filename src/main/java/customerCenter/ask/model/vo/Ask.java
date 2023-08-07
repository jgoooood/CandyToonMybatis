package customerCenter.ask.model.vo;

import java.sql.Date;

public class Ask {
	private int askNo;
	private String askCategory; 
	private String askSubject; 
	private String askContent; 
	private String askWriter; 
	private Date askDate;
	
	
	
	public Ask() {
		super();
	}

	public Ask(String askCategory, String askSubject, String askContent, String askWriter) {
		super();
		this.askCategory = askCategory;
		this.askSubject = askSubject;
		this.askContent = askContent;
		this.askWriter = askWriter;
	}
	
	public String getAskCategory() {
		return askCategory;
	}
	public void setAskCategory(String askCategory) {
		this.askCategory = askCategory;
	}
	public String getAskSubject() {
		return askSubject;
	}
	public void setAskSubject(String askSubject) {
		this.askSubject = askSubject;
	}
	public String getAskContent() {
		return askContent;
	}
	public void setAskContent(String askContent) {
		this.askContent = askContent;
	}
	public String getAskWriter() {
		return askWriter;
	}
	public void setAskWriter(String askWriter) {
		this.askWriter = askWriter;
	}
	public Date getAskDate() {
		return askDate;
	}
	public void setAskDate(Date askDate) {
		this.askDate = askDate;
	}
	
	
	public int getAskNo() {
		return askNo;
	}

	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}

	@Override
	public String toString() {
		return "1:1문의내역 [글번호=" + askNo + ", 문의유형=" + askCategory + ", 제목=" + askSubject + ", 내용="
				+ askContent + ", 작성자=" + askWriter + ", 날짜=" + askDate + "]";
	}

	
	
	
	
	
	
}
