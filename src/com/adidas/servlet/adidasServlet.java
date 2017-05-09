package com.adidas.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adidasServlet
 */
@WebServlet("/adidasServlet")
public class adidasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adidasServlet() {
        super();
//         TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 
	 * 
	 */
    
    ArrayList<Sneaker> sneakers=new ArrayList<Sneaker>();
    
    void addSneaker(){
    	

		Sneaker s1=new Sneaker();
		s1.setsID(1);
		s1.setsName("Neo Splash");
		s1.setsPrice(127);
		s1.setsDesc("Neo Splash is made in India under license by Adidas EU");
		s1.setsImgPth("s1.jpg");
		s1.setsYouTubeVd("hIqC9IYMUOU");
		
		
		Sneaker s2=new Sneaker();
		s2.setsID(2);
		s2.setsName("Blaze");
		s2.setsPrice(300);
		s2.setsDesc("Introducing Blaze, Bounce the road rush");
		s2.setsImgPth("s4.jpg");
		s2.setsYouTubeVd("hxzjBnO23Wk");
		
		Sneaker s3= new Sneaker();
		s3.setsID(3);
		s3.setsName("Jade");
		s3.setsPrice(350);
		s3.setsDesc("Soften paddings, comfortable as feathers Adidas EU");
		s3.setsImgPth("s5.jpg");
		s3.setsYouTubeVd("Cl84LnbXb04");
		
		Sneaker s4= new Sneaker();
		s4.setsID(4);
		s4.setsName("J Walker");
		s4.setsPrice(250);
		s4.setsDesc("New J Walker edition Original from Adidas EU");
		s4.setsImgPth("s6.jpg");
		s4.setsYouTubeVd("3RucyZiPfjw");
		
		Sneaker s5= new Sneaker();
		s5.setsID(5);
		s5.setsName("Crusher N");
		s5.setsPrice(225);
		s5.setsDesc("Crusher N edition Original from Adidas EU");
		s5.setsImgPth("s7.jpg");
		s5.setsYouTubeVd("PRkRARxA8v8");
		
		Sneaker s6= new Sneaker();
		s6.setsID(6);
		s6.setsName("Nunsang");
		s6.setsPrice(320);
		s6.setsDesc("Nunsang edition Original from Adidas EU");
		s6.setsImgPth("s8.jpg");
		s6.setsYouTubeVd("Cl84LnbXb04");
		
		Sneaker s7= new Sneaker();
		s7.setsID(7);
		s7.setsName("Serious 7");
		s7.setsPrice(500);
		s7.setsDesc("Very special sneaker product of Adidas EU");
		s7.setsImgPth("s9.jpg");
		s7.setsYouTubeVd("3RucyZiPfjw");
		
		Sneaker s8= new Sneaker();
		s8.setsID(8);
		s8.setsName("Summer's");
		s8.setsPrice(230);
		s8.setsDesc("For summer with complements of Adidas EU");
		s8.setsImgPth("s10.jpg");
		s8.setsYouTubeVd("hIqC9IYMUOU");
		
		Sneaker s9= new Sneaker();
		s9.setsID(9);
		s9.setsName("Zuera");
		s9.setsPrice(400);
		s9.setsDesc("Nothing better than Zuera Original from Adidas EU");
		s9.setsImgPth("s11.jpg");
		s9.setsYouTubeVd("Tlc2geGRwrk");
		
		Sneaker s10= new Sneaker();
		s10.setsID(10);
		s10.setsName("Neuz");
		s10.setsPrice(350);
		s10.setsDesc("Nuez with an introducing price Original from Adidas EU");
		s10.setsImgPth("s14.jpg");
		s10.setsYouTubeVd("3RucyZiPfjw");
		
		Sneaker s11= new Sneaker();
		s11.setsID(10);
		s11.setsName("Zizar");
		s11.setsPrice(225);
		s11.setsDesc("Feel like an Roman Original from Adidas EU");
		s11.setsImgPth("s16.jpg");
		s11.setsYouTubeVd("hIqC9IYMUOU");
		
		Sneaker s12= new Sneaker();
		s12.setsID(10);
		s12.setsName("Bizar");
		s12.setsPrice(225);
		s12.setsDesc("Feel blue colored romance Original from Adidas EU");
		s12.setsImgPth("s17.jpg");
		s12.setsYouTubeVd("3RucyZiPfjw");


		
		sneakers.add(s4);
		sneakers.add(s2);
		sneakers.add(s3);
		sneakers.add(s1);
		sneakers.add(s5);
		sneakers.add(s6);
		sneakers.add(s7);
		sneakers.add(s8);
		sneakers.add(s9);
		sneakers.add(s10);
		sneakers.add(s11);
		
		//sneakers.add(s4);
		/*sneakers.add(s2);
		sneakers.add(s3);
		sneakers.add(s1);
		sneakers.add(s5);
		sneakers.add(s6);
		sneakers.add(s7);
		sneakers.add(s8);
		sneakers.add(s9);
		sneakers.add(s10);
		sneakers.add(s11);*/
		//sneakers.add(s12);
		/*sneakers.add(s3);
		sneakers.add(s5);
		sneakers.add(s7);
		sneakers.add(s6);
		sneakers.add(s9);
		sneakers.add(s3);
		sneakers.add(s8);
		sneakers.add(s2);
		sneakers.add(s2);
		sneakers.add(s7);*/
		
    	
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		addSneaker();
		
		
		request.setAttribute("products", sneakers); 
		request.getRequestDispatcher("index.jsp").forward(request, response);
	//	request.getRequestDispatcher("BuyServlet").forward(request, response);
		
		
		//request.getRequestDispatcher("buy.jsp").forward(request, response);
		
		
		
	}

	

}
