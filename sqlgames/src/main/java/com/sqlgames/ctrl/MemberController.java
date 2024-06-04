package com.sqlgames.ctrl;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sqlgames.dto.Member;
import com.sqlgames.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("term.do")
	public String agree(Model model, RedirectAttributes rttr) {
		rttr.addAttribute("msg", "회원 약관에 동의하시기 바랍니다.");
		return "member/term";
	}

	@GetMapping("join.do")
	public String join(Model model, @ModelAttribute("member") Member member) {
		model.addAttribute("member", member);
		return "member/join";
	}
	
	@PostMapping("idCheck.do")
	public void idCheck(@RequestParam("id") String id, HttpServletResponse response, Model model) throws IllegalArgumentException, IOException {
		
		Member cus = memberService.getMember(id);
		
		//boolean result = (cus == null); cus가 null이 아니면 false
		
		boolean result;
		if(cus!=null) {
			result = false;
		} else {
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("data", result);
		PrintWriter out = response.getWriter();
		out.println(json.toString());
	}
	
	@GetMapping("login.do")
	public String login(Model model) {
		return "member/login";
	}
}
