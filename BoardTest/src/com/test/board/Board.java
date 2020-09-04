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
		int pageSize = 5; //한페이지당 출력 갯수
		int totalPage = 0; //총 페이지 수
		int begin = 0;//rnum 시작번호 -> 페이지 하단바에 제일먼저 시작하는 숫자를 가리킨다
		int end = 0;//rnum 끝 번호 -> 페이지 하단바에 제일마지막에 있는 숫자를 가리킨다.
		int n = 0;//페이지바 관련 변수
		int loop = 0;//페이지바 관련 변수
		int blockSize = 10;//해당바에 한번에 몇개까지 보여줄건지 정해준다.<1 2 3 4 5 6> -> 이런거 몇개 보여줄건지 정해준다는 뜻임.
		
		String page = req.getParameter("page");
		
		if (page == "" || page == null) {
			//page == ""은 왜 해주는걸까?
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;//끝 페이지
		
		map.put("begin",begin+"");
		map.put("end",end+"");
		
		totalCount = dao.getTotalCount(map);
		
		totalPage = (int)Math.ceil(((double)totalCount / pageSize));//총 몇페이지가 있는지 정해줄것이다.
		
		list = dao.getList(map);//map 에 속해있는 여러가지 조건을 만족하는 데이터를 받아온다 -> 실질적으로 모든 데이터를 받아올것이다.
		
		
		//페이지바 설정
		loop = 1;//페이지바
		
		n = ((nowPage - 1)/ blockSize) + 1;
		
		String pagebar = "";
		
		pagebar += "<ul>";
		
		
		
		//이전페이지 설정
		if (n != 1) {
			//첫 페이지에서는 이전페이지가 없게 만들어보자!
			//그냥 이전페이지 자체를 없애줄것이다.
			pagebar += String.format("<li><a href = \"/BoardTest/board/board.do?page=%d\">이전</a></li>",n - 1);
		} 
		
		
		
		//다음페이지 설정
		if (n <= totalPage) {
			
		}
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}
}
