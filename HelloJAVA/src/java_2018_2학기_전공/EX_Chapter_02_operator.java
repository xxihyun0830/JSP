package java_2018_2학기_전공;
/* 전공 자료 
 *  2장 
 *  - 2.1 메소드, 메소드 호출
 *  - 2.2 식별자 (identifier)  
 *  - 2.3 자바의 데이터 타입 
 *  - 2.4 자바에서 키 입력 : scanner
 *  - 2.5 연산 : 산술(+증감, 대입), 비교, 논리, 조건, 비트, 시프트 연산
 *  - 2.6 제어문(조건문) : if, else, switch
 * */
import java.util.Scanner;
public class EX_Chapter_02_operator {
	Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		//산술 연산 : +-*/%
		System.out.println(5+2);
		System.out.println(5-2);
		System.out.println(5*2);
		System.out.println(5/2);
		System.out.println(5%2);
		
		//증감 연산 : 전위 연산자, 후위 연산자
		int a = 10;
		int d = 20;
		int b = ++a; // 전위 연산자/ 증가 후의 값 리턴
		int c = d++; // 
		System.out.println("++a :"+b +"\n" +"d++:" + c);
			
		//대입 연산: += -= *= 등등
		int ab = 100;
		int cd = 40;
		cd += ab; // cd = cd + ab
		System.out.println(ab + "/" + cd );
		
		//비교 연산 : > < >= <= !=
		System.out.println(3>4);
		System.out.println(5<=10);
		System.out.println(3!=1);
		
		//논리 연산 : ! || &&
		System.out.println((3>2) && (3>1)); //true
		System.out.println((3<1) || (9>3)); //true
		
		//조건 연산 : (A?B:C) A가 True이면 B실행, False일 경우 C실행
		System.out.println((3<5)?(3+5):(3*5)); // if-else구문으로 나타낼 수 있음ㅁ
		
		//비트 연산 (45page ~)
		//시프트 연산 (48 page ~)
		
		
	}
	

}
