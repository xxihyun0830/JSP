package java_2018_2�б�_����;
/* ���� �ڷ� 
 *  2�� 
 *  - 2.1 �޼ҵ�, �޼ҵ� ȣ��
 *  - 2.2 �ĺ��� (identifier)  
 *  - 2.3 �ڹ��� ������ Ÿ�� 
 *  - 2.4 �ڹٿ��� Ű �Է� : scanner
 *  - 2.5 ���� : ���, ��, ��, ����, ��Ʈ, ����Ʈ ����
 *  - 2.6 ���(���ǹ�) : if, else, switch
 * */

import java.util.Scanner;

public class EX_Chapter_02_scanner {
	
	public static void main(String[] args){
		
		//���� 2-4 : �Է� �޾Ƽ� ����ϱ�
		Scanner sc = new Scanner(System.in);
		System.out.println("�̸�/����/�ּ�/��ȯ_��ȯ(new_old)�� �ۼ��ϼ���.");
		  // �� �ٲ�(enter key)������ �ƴ϶� ����(space bar)�� �ۼ��� ��� 2��° ���ó�� ��!
		
		
		String name = sc.next(); //��,���� �������� �� ��� sc.next()�� �ؾ� ��.
		System.out.println("�̸� : " + name);
		int age = sc.nextInt();
		System.out.println("����: " + age);
		String address = sc.next();
		System.out.println("�ּ� :" + address);
		String new_old = sc.next();
		System.out.println("��ȯ/��ȯ : " + new_old);
		
		System.out.println("-------------------------------");
		System.out.println("name : " + name + "\n" +
		                   "age : " + age + "\n" +
				           "address : " + address + "\n" +
		                   "new_old: " + new_old );
		System.out.println("-------------------------------");
		sc.close();
	}

}
