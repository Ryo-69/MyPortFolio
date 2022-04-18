package model;

import java.util.Random;

public class OxLogic {

	public OxLogic() {}

	//画像変更履歴を格納する
	public Ox belt(Ox ox, int x) {
		int[] bel = ox.getBelt();
		int[][] box = ox.getBox();
		bel[x] = 77;
		ox.setBelt(bel);
		for(int i = 0;i < 3;i++) {
			for(int k = 0;k < 3; k++) {
				if((i*3+k)== x) {
					box[i][k] = 77;
					ox.setBox(box);
					break;
				}
			}
		}
		return ox;
	}
	//ＣＰＵの入力メソッド
		public Ox cpu(Ox ox){
			boolean challenge = true;
			Random ran = new Random();
			int[] bel = ox.getBelt();
			int[][] box = ox.getBox();
			while(challenge) {
				int i = ran.nextInt(3);
				int k = ran.nextInt(3);
				if(box[i][k] == 0) {
					box[i][k] = 11;
					bel[(i*3+k)] = 11;
					challenge = false;
				}
			}
			ox.setBelt(bel);
			ox.setBox(box);
			return ox;
		}
		//列判定メソッド
		public Ox judge(Ox ox) {
			int count = 0;
			int[][] box = ox.getBox();
			for(int i = 0;i < 3;i++) {
				if(box[0][i] == box[1][i]&&box[0][i] == box[2][i]) {//縦
					ox.setB(box[0][i]);
					return ox;
				}else if(box[i][0] == box[i][1]&&box[i][0] == box[i][2]) {//横
					ox.setB(box[i][0]);
					return ox;
				}
			}
			//対角線
			if(box[0][0] == box[1][1]&&box[0][0] == box[2][2]) {
				ox.setB(box[0][0]);
				return ox;
			}
			if(box[0][2] == box[1][1]&&box[0][2] == box[2][0]) {
				ox.setB(box[0][2]);
				return ox;
			}
			//画像入力数のカウント
			for(int i = 0; i < 3; i++) {
				for(int k = 0; k < 3; k++) {
					if(box[i][k] != 0) {
						count++;
					}
				}
			}
			if(count == 9) {
				ox.setB(55);
				return ox;
			}
			System.out.println(ox.getB());
			return ox;
		}
}
