package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ox;
import model.OxLogic;


@WebServlet("/Oxc")
public class Oxc extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession se = request.getSession();
		if(se.getAttribute("ox") != null) {
		se.removeAttribute("ox");//念のため前回のスコープを破棄
		}
		HttpSession se2 = request.getSession();
		Ox ox = new Ox();
		se2.setAttribute("ox",ox);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/Ox.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession se = request.getSession();//スコープから必要な値を取り出す
		Ox ox = (Ox) se.getAttribute("ox");//ゲーム処理Oxインスタンス
		int num = Integer.parseInt(request.getParameter("maru"));//入力座標値maru
		se.invalidate();
		HttpSession se2 = request.getSession();//再度スコープを用意する
	    OxLogic oxl = new OxLogic();

	    ox = oxl.belt(ox,num);//画像変更履歴を格納する、７７を入れる
	    ox = oxl.judge(ox);//列がそろっているか判定メソッド
	    if(ox.getB()!=77) {//
	    	ox = oxl.cpu(ox);//ＣＰＵ側の入力メソッド、１１を入れる
	    	ox = oxl.judge(ox);//列がそろっているか判定メソッド
	    }
	    se2.setAttribute("ox",ox);//新たに処理済みのOxインスタンスをスコープにセット
    	//ここでデータベースに勝ち星を登録したい
    	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/Ox.jsp");
    	rd.forward(request, response);
	}
}
