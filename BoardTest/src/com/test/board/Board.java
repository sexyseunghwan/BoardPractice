package com.test.board;

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

@WebServlet("/board/board.do")
public class Board extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		BoardDAO dao = new BoardDAO();
		//BoardDTO dto = new BoardDTO();
		
		String search = req.getParameter("search");//검색한 단어에 대한 정보
		
		
		Map<String, String> map = new HashMap<String, String>();
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		map.put("search",search);
		
		
		int nowPage = 0;//현재 페이지 번호
		int totalCount = 0;//총게시물 수 
		int pageSize = 7; //한페이지당 출력 갯수
		int totalPage = 0; //총 페이지 수
		int begin = 0;//rnum 시작번호 -> 페이지 하단바에 제일먼저 시작하는 숫자를 가리킨다
		int end = 0;//rnum 끝 번호 -> 페이지 하단바에 제일마지막에 있는 숫자를 가리킨다.
		int n = 0;//페이지바 관련 변수 페이지바 숫자를 가리킨다. -> 진짜 숫자를 가리킴
		int loop = 0;//페이지바 관련 변수
		int blockSize = 5;//해당바에 한번에 몇개까지 보여줄건지 정해준다.<1 2 3 4 5 6> -> 이런거 몇개 보여줄건지 정해준다는 뜻임.
		
		String page = req.getParameter("page");//페이지를 받아와준다!
		
		if (page == "" || page == null) {
			//page == ""은 왜 해주는걸까? -> 그러게 애는 왜 해주는걸까?...돌겠구나
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);//페이지번호가 현재 문자열 상태이므로 정수형으로 바꿔주는 작업을 수행한다.
		}
		
		
		//이건 페이지바 관련된 변수가 아님! -> 헷갈리지 말아라. -> 불러올 목록에 관한것이다.
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin",begin+"");
		map.put("end",end+"");
		
		totalCount = dao.getTotalCount(map);//여기서 문제가 생김...!!
		
		totalPage = (int)Math.ceil(((double)totalCount / pageSize));//총 몇페이지가 있는지 정해줄것이다.
		
		list = dao.getList(map);//map 에 속해있는 여러가지 조건을 만족하는 데이터를 받아온다 -> 실질적으로 모든 데이터를 받아올것이다.
		
		
		for (BoardDTO dto : list) {
			
			if (search != null && search != "") {
				
				String subject = dto.getSubject();
				subject = subject.replace(search, "<span style = \"color : red; font-weight: bold;\">" + search +"</span>");
				dto.setSubject(subject);
				
				String content = dto.getContent();
				content = content.replace(search, "<span style = \"color : red; font-weight: bold;\">" + search +"</span>");
				dto.setContent(content);

			}
			
		}
		
		
		//페이지바 설정 -> 여기서 계속 문제가 생긴다.**?!...
		loop = 1;//페이지바
		
		System.out.println("=======");
		System.out.println(nowPage);
		System.out.println("=======");

		
		n = ((nowPage - 1)/ blockSize)*blockSize + 1;
		
		System.out.println("====n===이 바뀌어야 하는데?");
		System.out.println(n);
		System.out.println("====n===이 바뀌어야 하는데?");
		
		String pagebar = "";
		
		
		//*****여기서 ul을 시작해서 페이지바를 만들것이다.*****
		pagebar += "<ul>";
		
		

		//이전페이지 설정
		if (n != 1) {
			//첫 페이지에서는 이전페이지가 없게 만들어보자!
			//그냥 이전페이지 자체를 없애줄것이다.
			pagebar += String.format("<li><a href = \"/BoardTest/board/board.do?page=%d\">이전</a></li>&nbsp;",n - 1);
		} 
		
		
		//이전과 다음 사이에 있는 숫자탭을 가리킴.
		//blockSize : 해당바에 숫자 몇개를 보여줄건지 정해주는거임
		//totalPage : 전체 페이지 개수 -> 얼마나 많은 페이지가 있는지 ... 보여주는 페이지라고 생각하면 된다.
		while((loop <= blockSize && n <= totalPage)) {
			//페이지 번호
			
			System.out.println();
			if (n == nowPage) {
				//n이 현재 페이지 일떄 -> 하단바에 빨간색을 칠해줄것이다.
				pagebar += String.format("<li><a href = \"#!\" style = \"color : red;\">%d</a></li>&nbsp;",n);
			} else {
				//n이 현재 페이지가 아닌경우.
				if (search != null) {//서치값이 존재할떄!
					pagebar += String.format("<li><a href = \"/BoardTest/board/board.do?search=%s&page=%d\">%d</a></li>&nbsp;",search,n,n);
				} else {//서치값이 존재하지 않을 경우.
					pagebar += String.format("<li><a href = \"/BoardTest/board/board.do?page=%d\">%d</a></li>&nbsp;",n,n);
				}
			}//else
			
			loop++;
			n++;
			
			System.out.println(n);
		}
		
		
		//다음페이지 설정
		if (n <= totalPage) {
			pagebar += String.format("<li><a href = \"/BoardTest/board/board.do?page=%d\">다음</a></li>&nbsp;",n);
		}
		
		pagebar += "</ul>";
		
		
		req.setAttribute("list", list);
		req.setAttribute("search", search);
		req.setAttribute("page", page);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pagebar", pagebar);
		
		dao.close();//메모리 누수를 방지하기 위함이다.-> 닫아주는 습관을 들이자.
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.jsp");
		dispatcher.forward(req, resp);

		
	}
}
