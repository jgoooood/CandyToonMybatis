package customerCenter.ask.model.vo;

import java.util.List;

public class PageData {
	//네비게이터와 글목록을 함께 보내기 위해서 객체를 새로 생성함
	private List<Ask> aList;
	private String pageNavi;
	
	
	//기본생성자, 매개변수 생성자를 만들어줌
	public PageData() {
		super();
	}

	public PageData(List<Ask> aList, String pageNavi) {
		super();
		this.aList = aList;
		this.pageNavi = pageNavi;
	}

	//getter, setter메소드 생성
	public List<Ask> getaList() {
		return aList;
	}

	public void setaList(List<Ask> aList) {
		this.aList = aList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	//toString오버라이딩
	@Override
	public String toString() {
		return "PageData [aList=" + aList + ", pageNavi=" + pageNavi + "]";
	}
	
	
	
}
