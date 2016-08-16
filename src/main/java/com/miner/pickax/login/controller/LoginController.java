package com.miner.pickax.login.controller;

import java.io.File;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miner.pickax.common.util.CommonUtil;
import com.miner.pickax.login.mapper.MemberMapper;
import com.miner.pickax.login.vo.TermVo;
import com.miner.pickax.login.vo.UserVo;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired private MemberMapper memberMapper;
	
	//메인 소개페이지 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model,
			Principal principal) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("pageInfo","index");
		
		if(principal != null){
			return new ModelAndView("main/index");
		}else{
			return new ModelAndView("login/index");
		}
	}
	//로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("pageInfo","login");
		
		return new ModelAndView("login/login");
	}
	//회원가입 페이지
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("pageInfo","signup");
		
		return new ModelAndView("login/signup");
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String being(
			Principal principal,
			Locale locale,
			Model model,
			HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		logger.debug("userID : {}", principal.getName());
		request.getSession().setAttribute("name", principal.getName());
		return "redirect:/dashboard/index";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(
			Principal principal,
			Locale locale,
			Model model,
			@RequestParam(value = "error") String error,
			RedirectAttributes redirectAttr,
			HttpServletRequest request) {
		logger.debug("======== error ==========");
		
		logger.debug("error " + error);
		
		if(error != null) {
			if(error.compareTo("fail") == 0) {
				redirectAttr.addFlashAttribute("info_message", "로그인에 실패했습니다. 아이디와 비밀번호를 확인해주세요.");
				System.out.println("로그인 실패");
				return "redirect:/login";
			} else if(error.compareTo("access") == 0) {
				redirectAttr.addFlashAttribute("info_message", "관리자 승인이 나면 사용이 가능합니다.");
			} else if(error.compareTo("session") == 0) {
				redirectAttr.addFlashAttribute("info_message", "이미 로그인 되어있습니다.");
			}
		}
		
		return "redirect:/";
	}
	
	
	
	@RequestMapping(value = "/member_search", method = RequestMethod.GET)
	@ResponseBody
	public String memberSearch(Locale locale,
			Model model,
			@ModelAttribute("") UserVo userVo,
			HttpServletRequest request) throws Exception {
		logger.debug("============= memberSearch =============");
		logger.debug("userVo : {}", new JSONObject(userVo).toString());
		
		UserVo vo = memberMapper.getUser(userVo);
		
		if(vo != null) {
			return "fail";
		}
		
		return "sucess";
	}
	
	@RequestMapping(value = "/member_add", method = RequestMethod.POST)
	public String memberAdd(Locale locale,
			Model model,
			@ModelAttribute("") UserVo userVo,
			RedirectAttributes redirectAttr,
			HttpServletRequest request) throws Exception {
		logger.debug("============= member_add =============");
		logger.debug("userVo : {}", new JSONObject(userVo).toString());
		
		//입력된 아이디인지 검사
		if(userVo.getUserID() == ""){
			redirectAttr.addFlashAttribute("info_type", "1");
			redirectAttr.addFlashAttribute("info_message", "이메일 주소가 입력되지 않았습니다.");
			return "redirect:/signup";
		}else if(userVo.getUserNm() == ""){
			redirectAttr.addFlashAttribute("info_type", "2");
			redirectAttr.addFlashAttribute("info_message", "이름이 입력되지 않았습니다.");
			return "redirect:/signup";
		}else if(userVo.getUserPW() == ""){
			redirectAttr.addFlashAttribute("info_type", "3");
			redirectAttr.addFlashAttribute("info_message", "비밀번호가 입력되지 않았습니다.");
			return "redirect:/signup";
		}
		
		//아이디 중복 검사
		UserVo searchVo = new UserVo();
		searchVo.setUserID(userVo.getUserID());
		searchVo = memberMapper.getUser(searchVo);
		
		if(searchVo != null){
			redirectAttr.addFlashAttribute("info_message", "중복된 이메일 주소입니다.");
			return "redirect:/signup";
		}else{
			userVo.setUserEmail(userVo.getUserID());
			userVo.setUserPW(CommonUtil.messageToCryp(userVo.getUserPW()));
			memberMapper.setUser(userVo);
			return "redirect:/login";
		}
	}
	
	@RequestMapping(value = "/term_txt", method = RequestMethod.GET)
	@ResponseBody
	public TermVo term(Locale locale,
			Model model,
			HttpServletRequest request) throws Exception {
		logger.debug("============= term =============");
		
		File personFile = new File(request.getSession().getServletContext().getRealPath("/resources/text") +"/personal.txt");
		File termFile = new File(request.getSession().getServletContext().getRealPath("/resources/text") +"/term.txt");
		
		System.out.println(request.getSession().getServletContext().getRealPath("/resources/text") +"/term.txt");
		TermVo termVo = new TermVo();
		
		termVo.setPersonInfo(FileUtils.readFileToString(personFile, "UTF-8"));
		termVo.setUseTerm(FileUtils.readFileToString(termFile, "UTF-8"));
		
		logger.debug(" {}", new JSONObject(termVo).toString());
		return termVo;
	}

}
