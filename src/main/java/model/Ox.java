package model;

public class Ox {
	private int b=0;
	private int[] belt = new int[9];
	private int[][] box = new int[3][3];
	public Ox() {
		this.b = 0;
		for(int i = 0;i < 9; i++) {
			belt[i] = 0;
		}
		for(int i = 0; i < 3; i ++) {
			for(int k = 0; k < 3; k++) {
				box[i][k] = 0;
			}
		}
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	public int[] getBelt() {
		return belt;
	}
	public void setBelt(int[] belt) {
		this.belt = belt;
	}
	public int[][] getBox() {
		return box;
	}
	public void setBox(int[][] box) {
		this.box = box;
	}

}
