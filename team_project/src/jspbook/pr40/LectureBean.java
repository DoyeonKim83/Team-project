package jspbook.pr40;

public class LectureBean {
	private int type;
	private int title;
	private int day;
	private int time;
	private int consecutive;
	
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
	static final String[] dayNames = {"월", "화", "수", "목", "금"};
	
	public LectureBean() {
		setType(-1);
		setTitle(-1);
		setDay(-1);
		setTime(-1);
		setConsecutive(-1);
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getTitle() {
		return title;
	}

	public void setTitle(int title) {
		this.title = title;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getConsecutive() {
		return consecutive;
	}

	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}
	
	public String getTypeNames(int i) {
		return typeNames[i];
	}
	
	public String getTitleNames(int i) {
		return titleNames[i];
	}
	
	public String getDayNames(int i) {
		return dayNames[i];
	}
	
	public String toString() {
		String rslt = getTypeNames(type);
		rslt += "/" + getTitleNames(title);
		rslt += "/" + getDayNames(day);
		rslt += "/" + (time + 1) + "/" + consecutive + "<br/>";
		
		return rslt;
	}
	
}
