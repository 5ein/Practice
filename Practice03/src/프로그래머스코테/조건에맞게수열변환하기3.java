package 프로그래머스코테;

import java.util.Arrays;

public class 조건에맞게수열변환하기3 {

	public static void main(String[] args) {
		int[] arr = {1, 2, 3, 100, 99, 98};
		int k = 3;

		int[] answer = new int[arr.length];
		
		for (int i = 0; i < arr.length; i++) {
			if(k % 2 == 0) {
				answer[i] = arr[i] + k;
			}else if (k % 2 >0) {
				answer[i] = arr[i] * k;
			}
		}
		
		System.out.println(Arrays.toString(answer));
	}

}
