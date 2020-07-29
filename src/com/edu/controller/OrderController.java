package com.edu.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.PortableInterceptor.ForwardRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.common.utils.Page;
import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Order;
import com.edu.service.HomeUserService;
import com.edu.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private HomeUserService homeUserService;
	
	
	
	/**
	 * 用户界面点击预约按钮做的动作
	 * @param id
	 * @param model
	 * @param order
	 * @param aunt
	 * @param session
	 * @return
	 */

	@RequestMapping("/updateAunt_addOrder.action")
	public String updateAunt_addOrder(String id,Model model,Order order,HttpSession session){
		//String forword="jsp/MyOrder";		
		Huser huser=(Huser)session.getAttribute("huser");
		Aunt aunt=homeUserService.findAuntDetailById(id);
		
		System.out.println("aunt"+ aunt);
		System.out.println(huser.getId());
		
		System.out.println("准备修改");
		int aunt1 = orderService.updateOrderAunt_stateById(id);//修改阿姨状态
		System.out.println("已修改");
		model.addAttribute("aunt", aunt);
		session.setAttribute("aunt", aunt);
		order.setUid(huser.getId());
		order.setUser_name(huser.getUsername());
		order.setUser_phone(huser.getUserphone());
		order.setAuntid(id);
		order.setAunt_name(aunt.getAunt_name());
		order.setAunt_image(aunt.getImage());
		order.setAunt_type(aunt.getAunt_type());
		order.setAunt_phone(aunt.getAunt_phone());
		order.setAunt_idcard(aunt.getAunt_idcard());
		order.setAunt_state("预约中");
		System.out.println(order.getUid());
		System.out.println(order.getAuntid());		
		//model.addAttribute("aunt", aunt1);		
		int order1 = orderService.insertOrder_Aid_Uid(order);//插入新的订单信息
		//order.getOid();
		//homeUserService.updateOrderState(order);
		System.out.println("order"+ order);
		model.addAttribute("order", order);
		model.addAttribute("huser", huser);		
		session.setAttribute("huser", huser);
		return "redirect:toMyHetong2.action";
		//return "1";
		
		
		
	}
	
	
/*	用户界面的订单操作*/
	@RequestMapping("/toMyHetong2.action")
	public String toMyHetong2(Model model,HttpSession session,Order order,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="8")Integer rows) {	
		String forword="jsp/MyOrder";		
		Huser huser=(Huser)session.getAttribute("huser");
		order.setUid(huser.getId());
		List<Order> orders =orderService.findOrderById(order.getUid());
		model.addAttribute("order", orders);
		
		return forword;
	}
	
/*管理员界面的订单操作*/
	@RequestMapping("/toUpdate_creatOrder.action")
	public String toUpdate_creatOrder(String oid,Model model,HttpSession session) {
		System.out.println("到达控制层");
		String forword="admin/Order_hetong";
		Order order = orderService.toUpdate_creatOrder(oid);//根据oid进行查询order表里的信息
		System.out.println(order);
		model.addAttribute("order", order);
		//返回合同信息展示页面
		return forword;
	}
	@ResponseBody
	@RequestMapping("/Update_creatOrder.action")
	public Integer Update_creatOrder(@RequestBody Order order,Model model,HttpSession session) {
		 order.setAunt_state("预约通过");
		  model.addAttribute("order", order);
		 System.out.println("order.oid= "+order.getOid());
		 Order order1 = orderService.findAllOrder(order.getOid());//查询当前order表里的信息
		 order.setWork_begin(order1.getDangqian_work_begin());
		 order.setWork_end(order1.getDangqian_work_end());
		 return orderService.Update_creatOrder(order);
		 
	}
	@RequestMapping("/findOrderByAuntid.action")
	public String findOrderByAuntid(String oid,Model model,HttpSession session) {	
		String forword="admin/Order_beiyuyue";
		Order order = orderService.toUpdate_creatOrder(oid);
		order.getAuntid();
		System.out.println(order.getAuntid());
		List<Order> orders =orderService.findOrderByAuntid(order.getAuntid());
		model.addAttribute("order", orders);
		model.addAttribute("order1", order);
		return forword;
	}
	
	
	/*用户界面的签订合同操作*/
	@RequestMapping("/toMyOrder_detail.action")
	public String toMyOrder_detail(String oid,Model model,HttpSession session) {
		System.out.println("到达控制层");
		String forword="jsp/MyOrder_detail";
		Order order = orderService.toUpdate_creatOrder(oid);//查询语句
		System.out.println(order);
		model.addAttribute("order", order);
		//返回合同信息展示页面
		return forword;
	}
	@ResponseBody
	@RequestMapping("/update_MyOrder_detail.action")
	public Integer update_MyOrder_detail(@RequestBody Order order,Model model,HttpSession session) {
		 order.setAunt_state("预约成功");
		  model.addAttribute("order", order);
		 System.out.println("order.oid= "+order.getOid());
		 return orderService.update_MyOrder_detail(order);
		 
	}
	
	//用户查看合同内容语句
	@RequestMapping("/toFindMyOrderDetail.action")
	public String toFindMyOrderDetail(String oid,Model model,HttpSession session) {
		System.out.println("到达控制层");
		String forword="jsp/MyOrder_detail_success";
		Order order = orderService.toUpdate_creatOrder(oid);//查询语句
		System.out.println(order);
		model.addAttribute("order", order);
		//返回合同信息展示页面
		return forword;
	}
	
	//管理员拒绝合约，做删除操作
	@RequestMapping("/deleteOrder.action")
	public String deleteOrder(String oid,Aunt aunt,Model model,HttpSession session) {
		Order order = orderService.toUpdate_creatOrder(oid);//查询语句
		aunt.setId(order.getAuntid());
		int aunt1=orderService.updateAuntStateByOrderAuntid(aunt.getId());//根据id修改阿姨状态
		model.addAttribute("aunt", aunt);
		model.addAttribute("aunt", aunt1);
		//修改状态成功
		orderService.deleteOrder(oid);
		model.addAttribute("order", order);
		
		return "redirect:toOrder.action";
	}
	
	//合约之后添加评论
	@RequestMapping("/insertComment.action")
	public String insertComment(String oid,Comment comment,Model model,HttpSession session){
		System.out.println(oid);
		Order order = orderService.toUpdate_creatOrder(oid);//查询语句
		int order1=orderService.updateCommentState(oid);//根据订单的id修改订单中的评论状态
		model.addAttribute("order", order);
		model.addAttribute("order", order1);
		
		Huser huser=(Huser)session.getAttribute("huser");
		comment.setUid(huser.getId());//设置评论表的用户id为当前登录用户的id
		comment.setUid_name(huser.getUsername());//设置评论表的用户名为当前登录用户的用户名
		comment.setAid(order.getAuntid());//设置评论表的阿姨为订单表里面的阿姨id
		comment.setAid_name(order.getAunt_name());
		orderService.insertComment(comment);//添加评论的方法实现
		model.addAttribute("comment", comment);
//		model.addAttribute("msg", "评论成功");
		
		
		return "redirect:toMyHetong2.action";
		//return "1";
		
	}

	
	@RequestMapping("/toFindAuntDetailOrder.action")//点击秃瓢跳转到家政人员详情界面
	public String toFindAuntDetailOrder(String auntid,Order order,Aunt aunt,Comment comment,Model model){
		String forword="jsp/FindAunt_detail";
		aunt.setId(order.getAuntid());
		Aunt aunt1 = homeUserService.findAuntDetailById(aunt.getId());
		model.addAttribute("aunt", aunt1);
		
		comment.setAid(order.getAuntid());
		List<Comment> comments =orderService.findCommentByAid(comment.getAid());//查看评论
		model.addAttribute("comment", comments);
		
		order.setAuntid(order.getAuntid());
		List<Order> order1=orderService.findAuntYuyueByAuntid(order.getAuntid());//查看已被预约的时段
		model.addAttribute("order", order1);
		return forword;
		
	}
	
	@RequestMapping("/deleteOrder2.action")
	public String deleteOrder2(String oid,Aunt aunt,Model model,HttpSession session) {
		Order order = orderService.toUpdate_creatOrder(oid);//查询语句
		aunt.setId(order.getAuntid());
		int aunt1=orderService.updateAuntStateByOrderAuntid(aunt.getId());//根据id修改阿姨状态
		model.addAttribute("aunt", aunt);
		model.addAttribute("aunt", aunt1);
		//修改状态成功
		orderService.deleteOrder(oid);//删除订单
		model.addAttribute("order", order);
		
		return "redirect:toMyHetong2.action";
	}
	
	

}
