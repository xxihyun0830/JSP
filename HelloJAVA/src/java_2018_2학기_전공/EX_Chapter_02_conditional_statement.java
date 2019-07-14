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
public class EX_Chapter_02_conditional_statement {
	
	public static void main(String[] args) {
		//예제 2-13 : 중첩 if-else구문
		//학년과 성적을 입력받고, 60점 이하 C, 80점 이하 B, 100점 이하 A 로 학점을 출력하고
		// 4학년인 경우, 나머지 조건은 동일하나, 70점 이하는 B이다.

		
		Scanner sc = new Scanner(System.in);
		System.out.print("점수를 입력하세요 : ");
		int score = sc.nextInt();
		
		if (score >= 80) {
			System.out.println(score+"점 : 상");
		}else if(score>=50) {
			System.out.println(score + "점 : 중");
		}else {
			System.out.println(score+"점 : 하" );
		}
		
		sc.close();
		
		
	}

}
