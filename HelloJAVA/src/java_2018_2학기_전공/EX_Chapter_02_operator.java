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
public class EX_Chapter_02_operator {
	Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		//��� ���� : +-*/%
		System.out.println(5+2);
		System.out.println(5-2);
		System.out.println(5*2);
		System.out.println(5/2);
		System.out.println(5%2);
		
		//���� ���� : ���� ������, ���� ������
		int a = 10;
		int d = 20;
		int b = ++a; // ���� ������/ ���� ���� �� ����
		int c = d++; // 
		System.out.println("++a :"+b +"\n" +"d++:" + c);
			
		//���� ����: += -= *= ���
		int ab = 100;
		int cd = 40;
		cd += ab; // cd = cd + ab
		System.out.println(ab + "/" + cd );
		
		//�� ���� : > < >= <= !=
		System.out.println(3>4);
		System.out.println(5<=10);
		System.out.println(3!=1);
		
		//�� ���� : ! || &&
		System.out.println((3>2) && (3>1)); //true
		System.out.println((3<1) || (9>3)); //true
		
		//���� ���� : (A?B:C) A�� True�̸� B����, False�� ��� C����
		System.out.println((3<5)?(3+5):(3*5)); // if-else�������� ��Ÿ�� �� ������
		
		//��Ʈ ���� (45page ~)
		//����Ʈ ���� (48 page ~)
		
		
	}
	

}
