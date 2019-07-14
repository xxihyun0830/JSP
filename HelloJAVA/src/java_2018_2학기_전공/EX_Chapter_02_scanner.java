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

import java.util.Scanner;

public class EX_Chapter_02_scanner {
	
	public static void main(String[] args){
		
		//예제 2-4 : 입력 받아서 출력하기
		Scanner sc = new Scanner(System.in);
		System.out.println("이름/나이/주소/신환_구환(new_old)를 작성하세요.");
		  // 줄 바꿈(enter key)기준이 아니라 띄어쓰기(space bar)로 작성할 경우 2번째 출력처럼 됨!
		
		
		String name = sc.next(); //단,띄어쓰기 기준으로 할 경우 sc.next()로 해야 함.
		System.out.println("이름 : " + name);
		int age = sc.nextInt();
		System.out.println("나이: " + age);
		String address = sc.next();
		System.out.println("주소 :" + address);
		String new_old = sc.next();
		System.out.println("신환/구환 : " + new_old);
		
		System.out.println("-------------------------------");
		System.out.println("name : " + name + "\n" +
		                   "age : " + age + "\n" +
				           "address : " + address + "\n" +
		                   "new_old: " + new_old );
		System.out.println("-------------------------------");
		sc.close();
	}

}
