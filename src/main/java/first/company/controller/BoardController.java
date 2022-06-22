package first.company.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.company.service.BoardService;

@Controller
public class BoardController {
	/* 이름이 맞으면 구동 */
	@Resource(name = "boardService")        /* @autowrite 데이터 타입이 맞으면 자동으로 가져오는 방법 */
	private BoardService boardService; 
	
	
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@GetMapping("/main.do")
	public String main(CommandMap commandMap) {
		
		System.out.println(commandMap.getMap());
		return "main";
	}
	
	@GetMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login.do")
	public String login(CommandMap commandMap, HttpSession session) {
		System.out.println(commandMap.getMap());
		Map<String, Object> login = boardService.login(commandMap.getMap());
		System.out.println("결과값 : " + login);
		if (login != null) {
			session.setAttribute("u_id", login.get("u_id"));
			return "redirect:/board.do";
		} else
			return "redirect:/login.do";
	}
	
	@GetMapping("/board.do")
	public ModelAndView boardList(CommandMap commandMap) {
		ModelAndView mv = new ModelAndView("board");
		List<Map<String, Object>> boardList = boardService.boardList(commandMap.getMap());
		mv.addObject("boardList", boardList);
		return mv;
	}
	
}
