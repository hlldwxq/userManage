package com.znbq.sort;

/*快速排序算法*/
public class SortArray {
	float[] arr;	//待排序数组
	int[] label;	//数组标签
	public SortArray(float[] arr){
		this.arr=arr;
		label=new int[arr.length];
		for(int i=0;i<label.length;i++){
			label[i]=i;
		}
		quickSort(0, arr.length-1);
	}
	public void quickSort(int start, int end) {
		
		if (start < end) {
			float key = arr[start];
			int keyLabel=label[start];
			int right = start;
			int left = end;
			while (right < left) {
				while (right < left && arr[left] > key) {
					left--;
				}
				if (right < left) {
					arr[right] = arr[left];
					label[right]=label[left];
				}
				while (right < left && arr[right] <= key) {
					right++;
				}
				if (right < left) {
					arr[left] = arr[right];
					label[left]=label[right];
				}
			}
			arr[right] = key;
			label[right]=keyLabel;
			
			quickSort(start, right - 1);
			quickSort(left + 1, end);
		}
	}
	public float[] getArr(){
		return arr;
	}
	public int[] getLabel(){
		return label;
		
	}
}
