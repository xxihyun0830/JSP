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


public class EX_Chapter_02_basic {
	int height;
	int width;
	int radius;
	
	public static double CircleArea(int radius) {
		Double circleArea = 3.14 * radius * radius ;
		return circleArea ;
		
		// final double Pi = 3.141592 ��� �ʱⰪ �����ϸ� �߰��� ���� �Ұ���
		// �� Pi���� ������ 3.141592�� �������� ����.
	}
	
	public static int RectangleArea(int height, int width) {
		int rectangleArea = height * width ;
		return rectangleArea ;
	}
	
	public static void main(String[] args) {
		//���� 2-2
		double ex_circleArea = CircleArea(5);
		System.out.println("Circle Area = " + ex_circleArea );
		
		int ex_rectangleArea = RectangleArea(10,2);
		System.out.println("Rectangle Area = " + ex_rectangleArea);
		
		
		
	}
}
