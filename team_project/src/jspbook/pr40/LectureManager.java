package jspbook.pr40;
import java.util.ArrayList;

public class LectureManager {
	ArrayList<LectureBean> lectureList = new ArrayList<>();
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix= new int[times][days];
	private int[][] titleMatrix= new int[times][days];
	private int[][] spanMatrix= new int[times][days];

	public ArrayList<LectureBean> getLectureList() {
		return lectureList;
	}
	
	public int[][] getTypeMatrix() {
		return typeMatrix;
	}
	
	public int[][] getTitleMatrix() {
		return titleMatrix;
	}
	
	public int[][] getSpanMatrix() {
		return spanMatrix;
	}
	
	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}
	
	public void buildMatrix() {
		for (int i = 0; i < times; i++) {
			for (int j = 0; j < days; j++) {
				typeMatrix[i][j] = 0;
				titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;
			}
		}
		
		for (int i = 0; i < lectureList.size(); i++) {
			LectureBean lec = lectureList.get(i);
			int type = lec.getType() + 1; // type : 0 ~ 3 -> 1 ~ 4
			int title = lec.getTitle();
			int day = lec.getDay();
			int time = lec.getTime();
			int consecutive = lec.getConsecutive();
			
			typeMatrix[time][day] = type;
			titleMatrix[time][day] = title;
			spanMatrix[time][day] = consecutive;
			
			for (int j = 1; j < consecutive; j++) {
				if ((time + j) > 5)
					break;
				spanMatrix[time + j][day] = 0;
			}
		}
		
		System.out.println("<TypeMatrix>");
		printMatrix(typeMatrix);
		System.out.println("<TitleMatrix>");
		printMatrix(titleMatrix);
		System.out.println("<SpanMatrix>");
		printMatrix(spanMatrix);
	}
	
	public static void printMatrix(int[][] matrix) {
		for (int i = 0; i < times; i++) {
			for (int j = 0; j < days; j++) {
				System.out.print(matrix[i][j] + "\t");
			}
			System.out.println();
		}
		
		System.out.println();
	}
}
