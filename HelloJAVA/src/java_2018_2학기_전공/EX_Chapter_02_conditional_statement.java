package java_2018_2�б�_����;
/* ���� �ڷ� 
 *  2�� 
 *  - 2.1 �޼ҵ�, �޼ҵ� ȣ��
 *  - 2.2 �ĺ��� (identifier)  
 *  - 2.3 �ڹ��� ������ Ÿ�� 
 *  - 2.4 �ڹٿ��� Ű �Է� : scanner
 *  - 2.5 ���� : ���(+����, ����), ��, ��, ����, ��Ʈ, ����Ʈ ����
 *  - 2.6 ���(���ǹ�) : if, else, switch
 * */

import java.util.Scanner;
public class EX_Chapter_02_conditional_statement {
	
	public static void main(String[] args) {
		//���� 2-13 : ��ø if-else����
		//�г�� ������ �Է¹ް�, 60�� ���� C, 80�� ���� B, 100�� ���� A �� ������ ����ϰ�
		// 4�г��� ���, ������ ������ �����ϳ�, 70�� ���ϴ� B�̴�.

		
		Scanner sc = new Scanner(System.in);
		System.out.print("������ �Է��ϼ��� : ");
		int score = sc.nextInt();
		
		if (score >= 80) {
			System.out.println(score+"�� : ��");
		}else if(score>=50) {
			System.out.println(score + "�� : ��");
		}else {
			System.out.println(score+"�� : ��" );
		}
		
		sc.close();
		
		
	}

}
