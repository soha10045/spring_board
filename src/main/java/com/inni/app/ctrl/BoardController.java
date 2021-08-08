package com.inni.app.ctrl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inni.app.service.BoardService;
import com.inni.app.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	/**
	 * 게시물 리스트
	 * 
	 * @author inni
	 * @since 2021-08-08
	 * @param model
	 * @return String viewName
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	 public String list(Model model) {
		List<BoardVO> list = boardService.selectAll();
		model.addAttribute("list", list);
		
	 	return "list";
	}
	//게시판 글보기 
	
	/**
	 * 게시물 상세
	 * 
	 * @author inni
	 * @since 2021-08-08
	 * @param num 게시물번호
	 * @param model
	 * @return String viewName
	 */
	@RequestMapping(value="/view/{num}",method=RequestMethod.GET)
	 public String detail(@PathVariable("num") int num, Model model) {
		BoardVO paramVO = new BoardVO();
		paramVO.setNum(num);
		BoardVO item = boardService.selectDetail(paramVO);
		
		model.addAttribute("item", item);
		
		return "view";
	}
	
	/**
	 * 글쓰기
	 * 
	 * @author inni
	 * @since 2021-08-08
	 * @return String insert
	 */ 
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	 public String insertForm() {
		return "insert";
	}

	//글쓰기 처리 
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	 public String insert(HttpServletRequest req, HttpSession session) {
		String contents = req.getParameter("contents");
		String title = req.getParameter("title");
		Object userId = session.getAttribute("userId");
		
		if (userId == null) {
			// login not
			return "redirect:login";
		}

		BoardVO boardVO = new BoardVO();
		boardVO.setContents(contents);
		boardVO.setTitle(title);
		boardVO.setWriterId(userId.toString());
		boardService.insert(boardVO);
		
		return"redirect:list";
	}
	//뭐지? 
	@RequestMapping(value="/insert2",method=RequestMethod.POST)
	 public String insert2(@ModelAttribute("boardVO") BoardVO boardVO) {
		boardService.insert(boardVO);
		return"insert";
	}
	
	//글 수정하기 
	@RequestMapping(value="/update/{num}",method=RequestMethod.GET)
	 public String update(@PathVariable("num")int num, Model model) {
		BoardVO paramVO = new BoardVO();
		paramVO.setNum(num);
		BoardVO item = boardService.selectDetail(paramVO);
		
		model.addAttribute("item", item);
		return"update";
	}
	//글 수정 처리 
	@RequestMapping(value="/update",method=RequestMethod.POST)
	 public String update(@ModelAttribute("boardVO")BoardVO boardVO) {
		boardService.update(boardVO);
		
		//바로 글보기로 이동한다 
		return "redirect:view/"+boardVO.getNum();
	}

	//게시판삭제
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	 public String delete(HttpServletRequest req) {
		int num = Integer.parseInt(req.getParameter("num"));
		
		BoardVO boardVO = new BoardVO();
		boardVO.setNum(num);
		boardService.delete(boardVO);
		return "redirect:/list";
	}
}
