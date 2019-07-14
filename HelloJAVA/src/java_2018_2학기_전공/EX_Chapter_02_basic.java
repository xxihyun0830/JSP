package java_2018_2학기_전공;

/* 전공 자료 
 *  2장 
 *  - 2.1 메소드, 메소드 호출
 *  - 2.2 식별자 (identifier)  
 *  - 2.3 자바의 데이터 타입 
 *  - 2.4 자바에서 키 입력 : scanner
 *  - 2.5 연산 : 산술, 비교, 논리, 조건, 비트, 시프트 연산
 *  - 2.6 제어문(조건문) : if, else, switch
 * */


public class EX_Chapter_02_basic {
	int height;
	int width;
	int radius;
	
	public static double CircleArea(int radius) {
		Double circleArea = 3.14 * radius * radius ;
		return circleArea ;
		
		// final double Pi = 3.141592 라고 초기값 지정하면 중간에 변경 불가능
		// 즉 Pi값은 언제나 3.141592로 정해지는 거임.
	}
	
	public static int RectangleArea(int height, int width) {
		int rectangleArea = height * width ;
		return rectangleArea ;
	}
	
	public static void main(String[] args) {
		//예제 2-2
		double ex_circleArea = CircleArea(5);
		System.out.println("Circle Area = " + ex_circleArea );
		
		int ex_rectangleArea = RectangleArea(10,2);
		System.out.println("Rectangle Area = " + ex_rectangleArea);
		
		
		
	}
}
