package com.edu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.common.utils.Page;
import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.NewActive;
import com.edu.po.NewActiveReply;
import com.edu.po.Order;
import com.edu.service.HomeUserService;
import com.edu.service.OrderService;



@Controller
public class HomeUserController {
	@Autowired
	private HomeUserService homeUserService;
	@Autowired
	private OrderService orderService;
	
/*	@Autowired
	private HomeAdminService homeAdminService;*/
	
	@RequestMapping("/user_register.action")
	public String register(Model model,Huser huser) {
		String forword="";
		homeUserService.addHuser(huser);
		forword="registerSuccess";
		model.addAttribute("msg","注册成功!!");
	    return forword;
	}
	
	
	@RequestMapping("/user_login.action")
	public String user_login(Model model,Huser huser,HttpSession session) {
		String forword="";
		Huser huser1=homeUserService.findUserByIdAndPassword(huser);
		if(huser1!=null){
			forword="jsp/indexS";
			model.addAttribute("huser", huser1); //model把数据传送到前端
			session.setAttribute("huser", huser1); //session把数据保存到服务器
		}
		else{
			forword="index";
			/*SysAdmin sysAdmin=new SysAdmin();
			sysAdmin.setId(huser.getId());
			sysAdmin.setPassword(huser.getPassword());
			
			SysAdmin sysAdmin1=sysAdminService.findSysAdmindByIdAndPas(sysAdmin);
			if(sysAdmin1!=null){
				forword="jsp/indexS";
				session.setAttribute("sysAdmin", sysAdmin1);
			}*/
				
		}
		return forword;
	}
	
	@RequestMapping("/loginout.action")
	public String loginout(Model model,HttpSession session) {
		String forword="zhuyemian";
		session.invalidate();
		return forword;
	}

	@ResponseBody
	@RequestMapping("/inforUpdate.action")
	public String inforUpdate(@RequestBody Huser huser,HttpSession session) {
		System.out.println("xiugai");
		System.out.println(huser.getId());
		int huser1 =homeUserService.updateInforById(huser);
		System.out.println(huser);
		session.setAttribute("huser", huser);
		//返回客户信息展示页面
		return "1";
	}

	@ResponseBody //因为前端要接收ajax的信息
	@RequestMapping("/pasUpdate.action")
	public String pasUpdate(@RequestBody Huser huser,Model model,HttpSession session) {
		System.out.println("xiugaimima");
		System.out.println(huser.getId());
		int huser2 =homeUserService.updatePasById(huser);
		System.out.println(huser);
		model.addAttribute("huser", huser2);
		//返回客户信息展示页面
		return "jsp/PasUpdate.jsp";
	}
	
	
	/**
	 * 留言评论模块
	 * @param model
	 * @param newActive
	 * @param session
	 * @return
	 */
	@RequestMapping("/insertActive.action")
	public String insertActive(Model model,NewActive newActive,HttpSession session) {
		Huser huser=(Huser)session.getAttribute("huser");
		//设置插入日期
		Date  date =new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
		String date1 = sdf.format(date);
		newActive.setPublish_time(date1);
		
		newActive.setUid(huser.getId());
		newActive.setUid_name(huser.getUsername());		
		
		homeUserService.insertActive(newActive);//方法
		model.addAttribute("newActive",newActive);
		session.setAttribute("huser", huser);
	    return "redirect:toNewActive.action";
	}
	@RequestMapping("/toNewActive.action")
	public String toNewActive(Model model,HttpSession session,NewActive newActive) {	
		String forword="jsp/NewActive";
		List<NewActive> newActives =homeUserService.toNewActive(newActive);
		model.addAttribute("newActive",newActives);
		return forword;
	}
	@RequestMapping("/toFindNewActiveById.action")
	public String toFindNewActiveById(String id,NewActiveReply newActiveReply,Model model,
			HttpSession session) {
		String forword="jsp/NewActive_detail";
		NewActive newActive = homeUserService.toFindNewActiveById(id);
		model.addAttribute("newActive", newActive);
		
		newActiveReply.setId(newActive.getId());
		List<NewActiveReply> newActiveReplys =homeUserService.findnewActiveReplyById(newActiveReply.getId());
		model.addAttribute("newActiveReply", newActiveReplys);
		return forword;
	}
	//发布评论
	@RequestMapping("/insertActiveReply.action")
	public String insertActiveReply(String id,Model model,NewActiveReply newActiveReply,NewActive newActive,
			HttpSession session,RedirectAttributes redirect) {
		//homeUserService.toFindNewActiveById(id);//查询语句
		model.addAttribute("newActive", newActive);		
		
		Huser huser=(Huser)session.getAttribute("huser");
		//设置插入日期
		Date  date =new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
		String date1 = sdf.format(date);	
		newActiveReply.setReply_time(date1);
		newActiveReply.setId(id);
		newActiveReply.setRid(huser.getId());
		newActiveReply.setRid_name(huser.getUsername());
		homeUserService.insertActiveReply(newActiveReply);//方法
		//model.addAttribute("newActiveReply", newActiveReply);
		//session.setAttribute("huser", huser);
		 redirect.addAttribute("id",id);
		//redirect.addAttribute("newActive",newActive);
		
		return "redirect:toFindNewActiveById.action";
	}
	
	
	
	
	
	
	//留言评论模块结束
	
	
	
	
	
	
	
	
	
	@RequestMapping("/insertAunt.action")
	public String insertAunt(Model model,Aunt aunt) {
		String forword="jsp/HandupMessage_success";
		homeUserService.insertAunt(aunt);
		model.addAttribute("msg","提交成功！");
	    return forword;
	}
	
	@RequestMapping("/insertNeed.action")
	public String insertNeed(Model model,Need need) {
		String forword="zhuyemian_Success";
		Date  date =new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
		String date1 = sdf.format(date);
		need.setNeed_date(date1);
		need.setNeed_state("待处理");
		homeUserService.insertNeed(need);
		model.addAttribute("msg","预约成功！");
	    return forword;
	}
	
	
	/**
	 * 查找家政人员
	 */
	@RequestMapping("/toFindAunt.action")
	public String toFindAunt(Model model,HttpSession session,Aunt aunt,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="8")Integer rows) {
		
		String forword="jsp/FindAunt";
		Page<Aunt> aunts=homeUserService.findAuntByState(page,rows,aunt);
		model.addAttribute("page", aunts);
		model.addAttribute("aunt_state", aunt.getAunt_state());
		session.setAttribute("page", aunts);
		session.setAttribute("aunt_state", aunt.getAunt_state());
		
		return forword;
	}
	
	/**
	 * 根据姓名查找家政人员
	 */
	@RequestMapping("/toFindAuntByName.action")
	public String toFindAuntByName(Model model,HttpSession session,Aunt aunt,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="8")Integer rows) {
		
		String forword="jsp/FindAunt";
		Page<Aunt> aunts=homeUserService.findAuntByName(page,rows,aunt);
		model.addAttribute("page", aunts);
		model.addAttribute("aunt_name", aunt.getAunt_name());
		session.setAttribute("page", aunts);
		session.setAttribute("aunt_name", aunt.getAunt_name());
		
		return forword;
	}
	
	/**
	 * 根据类型查找家政人员
	 */
	@RequestMapping("/toFindAuntByType.action")
	public String toFindAuntByType(Model model,HttpSession session,Aunt aunt,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="8")Integer rows) {
		
		String forword="jsp/FindAunt";
		Page<Aunt> aunts=homeUserService.findAuntByType(page,rows,aunt);
		model.addAttribute("page", aunts);
		model.addAttribute("aunt_type", aunt.getAunt_type());
		session.setAttribute("page", aunts);
		session.setAttribute("aunt_type", aunt.getAunt_type());
		
		return forword;
	}
	
	
	@RequestMapping("/toFindAuntDetail.action")
	public String toFindAuntDetail(String id,Model model,Comment comment,Order order,HttpSession session) {
		String forword="jsp/FindAunt_detail";
		Aunt aunt = homeUserService.findAuntDetailById(id);
		System.out.println(aunt);
		model.addAttribute("aunt", aunt);
		
		comment.setAid(aunt.getId());
		List<Comment> comments =orderService.findCommentByAid(comment.getAid());//查看评论
		model.addAttribute("comment", comments);
		
		order.setAuntid(aunt.getId());
		List<Order> order1=orderService.findAuntYuyueByAuntid(order.getAuntid());//查看已被预约的时段
		model.addAttribute("order", order1);
		return forword;
	}
	
	





	

}
