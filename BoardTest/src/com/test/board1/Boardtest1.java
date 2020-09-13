package com.test.board1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board1/boardtest1.do")
public class Boardtest1 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		Board1DAO dao = new Board1DAO();
		
		
		String search = req.getParameter("search");//search값을 받아온다.
		
		Map<String, String> map = new HashMap<String, String>();
		List<Board1DTO> list = new ArrayList<Board1DTO>();
		map.put("search",search);
		
		int nowPage = 0;//현재 페이지 번호
		int totalCount = 0;//총 게시물 수
		int pageSize = 5;//한 페이지당 출력 갯수 -> 한 페이지당 5개를 출력할 것이다.
		int totalPage = 0;//총 페이지 수 
		int begin = 0;//rnum 시작번호 -> 페이지 하단바에 제일먼저 시작하는 숫자
		int end = 0;//rnum 끝 번호 -> 페이지 하단바에 제일 마지막에 있는 숫자를 가리킨다.
		int n = 0;//페이지바 관련변수 페이지바 숫자를 가리킨다 -> 진짜 숫자를 가리킨다.
		int loop = 0;//페이지바 관련변수 
		int blockSize = 6;//페이지바에 한번에 몇개까지 보여줄건지 정해준다. -> <1,2,3,4,5> 이런식으로 페이지바 몇개가 나올건지 정해준다.
		
		String page = req.getParameter("page");//page 를 받아와준다.
		
		if (page == "" || page == null) {
			nowPage = 1;//페이지가 지정되지 않은 경우에는 현재페이지는 무조건 1이라고 보면 된다.
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		//불러올 목록에 관한것이다. -> rnum 에 관련된것 1페이지일때 몇번부터 몇번까지 불러와야 되는지 그런거 정해주는것이다.
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin",begin+"");
		map.put("end",end+"");
		
		totalCount = dao.getTotalCount(map);
		
		totalPage = (int)Math.ceil((double)totalCount/pageSize);//총 몇페이지가 나오는지 -> 소수점 존재하면 바로 올림처리 그리하여 페이지 하나 더 생성해주는 것이다.
		
		list = dao.getList(map);
		
		
		//검색한거 빨간색으로 처리는 다음에...
		
		
		//이 페이징 알고리즘이 너무나 어렵다 아니 봐도 모르겠어 진심으로 ㅋㅋㅋ
		loop = 1;//페이지바 -> 이 루프가 뜻하는게 뭐지?
		
		n = ((nowPage - 1) / blockSize)*blockSize + 1;
		
		String pagebar = "";
		
		pagebar += "<ul>";
		
		//이전 페이지 설정
		if (n != 1) {
			pagebar += String.format("<li><a href=\"/BoardTest/board1/boardtest1.do?page=%d\"><i class=\"icofont-ui-previous\"></i></a></li>", n-1);
		}
		//아 이해가 된다 이해가 된다!
		while(loop <= blockSize && n <= totalPage) {
			
			if (n == nowPage) {
				//n 이 현재 페이지일때?
				pagebar += String.format("<li><a href=\"#!\" style = \"color : red; font-weight: bolder;\">%d</a></li>", n);
			} else {
				//n 이 현재 페이지가 아닐떄?
				if (search != null) {
					//검색값이 존재하는 경우
					pagebar += String.format("<li><a href=\"/BoardTest/board1/boardtest1.do?search=%s&page=%d\">%d</a></li>", search,n,n);
				} else {
					//검색값이 존재하지 않는 경우
					pagebar += String.format("<li><a href=\"/BoardTest/board1/boardtest1.do?page=%d\">%d</a></li>",n,n);
				}
			}
			loop++;
			n++;
			 
			System.out.println("===?===");
			System.out.println(n);
			System.out.println("===?===");
			
		}
		System.out.println("***************************");
		
		//다음 페이지 설정
		if (n <= totalPage) {
			pagebar += String.format("<li><a href=\"/BoardTest/board1/boardtest1.do?page=%d\"><i class=\"icofont-ui-next\"></i></a></li>", n);
		}
		pagebar += "</ul>";//페이지바 닫기.
		
		req.setAttribute("list", list);
		req.setAttribute("search", search);
		req.setAttribute("page", page);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pagebar", pagebar);
		
		dao.close();
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board1/boardtest1.jsp");
		dispatcher.forward(req, resp);
		
	}
}
