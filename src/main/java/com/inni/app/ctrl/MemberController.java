package com.inni.app.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inni.app.service.MemberService;
import com.inni.app.vo.MemberVO;

@Controller
public class MemberController {

	// 로그인
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("Login!");
		return "login";
	}

	// 회원가입 폼
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		System.out.println("Join!");
		return "join";
	}

	// 회원가입 처리
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinProcess(HttpServletRequest req) {
		System.out.println("Join Process!");

		String id = req.getParameter("userId");
		String pw = req.getParameter("userPw");
		String name = req.getParameter("userName");

		MemberVO paramVO = new MemberVO();
		paramVO.setUserId(id);
		paramVO.setUserPw(pw);
		paramVO.setUserName(name);
		memberService.insert(paramVO);

		// "redirect:/login"
		// string : view
		return "redirect:/login";
	}

	// 로그인처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginProcess(HttpServletRequest req, HttpSession session) {

		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");

		MemberVO paramVO = new MemberVO();
		paramVO.setUserId(userId);
		MemberVO item = memberService.selectDetail(paramVO);
		if (item == null) {
			// 아이디 자체가 없는 케이스
			System.out.println("1111");

			return "login";
		} else {
			if (userPw.equals(item.getUserPw())) {
				// id, pw 같은 경우
				// 로그인 성공
				session.setAttribute("userId", userId);
				// String id = session.getAttribute("userId").toString();
				System.out.println("2222");
				return "redirect:list";
			} else {
				// 비밀번호가 틀린 케이스.
				System.out.println("3333");

				return "asd";
			}
		}
	}

	// 로그아웃처리

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutProcess(HttpSession session) {

		session.removeAttribute("userId");
		return "redirect:/login";
	}

}
